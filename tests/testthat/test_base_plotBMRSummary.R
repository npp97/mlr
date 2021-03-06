context("plotBMRSummary")

test_that("BenchmarkSummary", {
  lrns = list(makeLearner("classif.nnet"), makeLearner("classif.rpart"))
  tasks = list(multiclass.task, binaryclass.task)
  rdesc = makeResampleDesc("CV", iters = 2L)
  meas = list(acc, mmce, ber, timeboth)
  res = benchmark(lrns, tasks, rdesc, meas)
  nTasks = length(getBMRTaskIds(res))
  nLrns = length(getBMRLearnerIds(res))

  plotBMRSummary(res)

  # pretty.names works
  plotBMRSummary(res)
  dir = tempdir()
  path = paste0(dir, "/test.svg")
  ggsave(path)
  doc = XML::xmlParse(path)
  testDocForStrings(doc, getBMRLearnerShortNames(res))
  
  plotBMRSummary(res, pretty.names = FALSE)
  dir = tempdir()
  path = paste0(dir, "/test.svg")
  ggsave(path)
  doc = XML::xmlParse(path)
  testDocForStrings(doc, getBMRLearnerIds(res))
  
})
