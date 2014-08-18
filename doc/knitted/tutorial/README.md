Tutorial
========

Quick start
-----------

A simple stratified cross-validation of the *linear discriminant analysis* with **mlr**.

```splus
library(mlr)
data(iris)
# Define the Task:
tsk = makeClassifTask(id = "tutorial", data = iris, target = "Species")
# Define the Learner:
lrn = makeLearner("classif.lda")
# Define the Resampling Strategy:
rsm = makeResampleDesc(method = "CV", stratify = TRUE)
# Do the resampling:
res = resample(learner = lrn, task = tsk, resampling = rsm, show.info = FALSE)
# Get the mean misclassification error:
res$aggr
```

```
## mmce.test.mean 
##           0.02
```

Datails for each step can be found in the following tutorial chapters.

Content
-------

1. [Learning tasks](task.md)
2. [Learners](learner.md)
3. [Training a learner](train.md)
4. [Predicting outcomes for new data](predict.md)
5. [Evaluating learner performance](performance.md)
6. [Resampling](resample.md)
7. [Tuning hyperparameters](tune.md)
8. [Feature selection](feature_selection.md)
9. [Benchmark experiments](benchmark_experiments.md)
10. [Benchmark analysis](benchmark_analysis.md)
11. [ROC analysis](roc_analysis.md)
12. [List of all integrated learners](http://berndbischl.github.io/mlr/man/learners.html)
13. Cool Stuff - Various short examples of cool stuff we have put into **mlr**.
  * [Generic bagging](makeBaggingWrapper.md) You can wrap all learners supported by **mlr** in a nice bagging method improving stability of the predictions and allowing you to get standard error estimations.
  * [Over and undersampling](over_and_undersampling.md) Oversample minority classes or vice versa.
  * [Multicriteria evaluation](multicriteria_evaluation.md) Learn how to aggregate the multiple measures from a cross validation.
  * [mlr Configuration](configureMlr.md) ignore learner errors, **mlr**'s parameter checking and suppress other output.
  * [Parallelization](parallelization.md) Make use of multicore CPUs and other distributed computing methods.

This web page will provide you with an in-depth introduction on how to
use the **mlr** framework for machine learning experiments and
optimization in R.

Our focus is on your comprehension of the basic functions and
applications. For detailed technical information and manual pages, please refer to
the package's [manual pages](http://berndbischl.github.io/mlr/man/). They are regularly updated and reflect the documentation
of the current packages on CRAN.

The approach is step by step and orients itself on the proceeding of a basic data set analysis:

* What is your data and the aim of your analysis?
* How do you select learning algorithms and set them up?
* How to predict new data?
* How to evaluate models and their predictions?
* How to tune models?
* How to select important features?
* How to conduct a larger comparison study?

We present various simple examples from classification and regression
during this tutorial to illustrate the main features of the
packages.

Enjoy reading!
