% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_functions.R
\name{h2o_automl}
\alias{h2o_automl}
\title{Automated H2O's AutoML}
\usage{
h2o_automl(
  df,
  y = "tag",
  ignore = c(),
  train_test = NA,
  split = 0.7,
  weight = NULL,
  target = "auto",
  balance = FALSE,
  impute = FALSE,
  center = FALSE,
  scale = FALSE,
  seed = 0,
  nfolds = 5,
  thresh = 5,
  max_models = 3,
  max_time = 10 * 60,
  start_clean = TRUE,
  exclude_algos = c("StackedEnsemble", "DeepLearning"),
  plots = TRUE,
  alarm = TRUE,
  quiet = FALSE,
  save = FALSE,
  subdir = NA,
  project = "ML Project"
)
}
\arguments{
\item{df}{Dataframe. Dataframe containing all your data, including 
the independent variable labeled as 'tag'. If you want to define 
which variable should be used instead, use the y parameter.}

\item{y}{Character. Name of the independent variable}

\item{ignore}{Character vector. Force columns for the model to ignore}

\item{train_test}{Character. If needed, df's column name with 'test' 
and 'train' values to split}

\item{split}{Numeric. Value between 0 and 1 to split as train/test 
datasets. Value is for training set. Set value to 1 to train will all 
available data and test with same data (cross-validation will still be 
used when training)}

\item{weight}{Column with observation weights. Giving some observation a
weight of zero is equivalent to excluding it from the dataset; giving an 
observation a relative weight of 2 is equivalent to repeating that 
row twice. Negative weights are not allowed.}

\item{target}{Value. Which is your target positive value? If 
set to 'auto', the target with largest mean(score) will be 
selected. Change the value to overwrite. Only used when binary
categorical model.}

\item{balance}{Boolean. Auto-balance train dataset with under-sampling?}

\item{impute}{Boolean. Fill NA values with MICE?}

\item{center, scale}{Boolean. Using the base function scale, do you wish
to center and/or scale all numerical values?}

\item{seed}{Integer. Set a seed for reproducibility. AutoML can only 
guarantee reproducibility if max_models is used because max_time is 
resource limited.}

\item{nfolds}{Integer. Number of folds for k-fold cross-validation of 
the models. If set to 0, the test data will be used as validation, and
cross-validation amd Stacked Ensembles disableded}

\item{thresh}{Integer. Threshold for selecting binary or regression 
models: this number is the threshold of unique values we should 
have in 'tag' (more than: regression; less than: classification)}

\item{max_models, max_time}{Numeric. Max number of models and seconds 
you wish for the function to iterate. Note that max_models guarantees
reproducibility and max_time not (because it depends entirely on your
machine's computational characteristics)}

\item{start_clean}{Boolean. Erase everything in the current h2o 
instance before we start to train models?}

\item{exclude_algos}{Vector of character strings. Algorithms to 
skip during the model-building phase. Set NULL to use all}

\item{plots}{Boolean. Create plots objects?}

\item{alarm}{Boolean. Ping an alarm when ready! Needs beepr installed}

\item{quiet}{Boolean. Quiet messages, warnings, recommendations?}

\item{save}{Boolean. Do you wish to save/export results into your 
working directory?}

\item{subdir}{Character. In which directory do you wish to save 
the results? Working directory as default.}

\item{project}{Character. Your project's name}
}
\description{
This function lets the user create a robust and fast model, using 
H2O's AutoML function. The result is a list with the best model, 
its parameters, datasets, performance metrics, variables 
importances, and other useful metrics.
}
\details{
Full list of algorithms: "DRF" (Distributed Random Forest, including 
Random Forest (RF) and Extremely-Randomized Trees (XRT)), "GLM" 
(Generalized Linear Model), "XGBoost" (eXtreme Grading Boosting), 
"GBM" (Gradient Boosting Machine), "DeepLearning" (Fully-connected 
multi-layer artificial neural network) and "StackedEnsemble". Read more: 
\url{http://docs.h2o.ai/h2o/latest-stable/h2o-docs/automl.html}
}
\seealso{
Other Machine Learning: 
\code{\link{ROC}()},
\code{\link{clusterKmeans}()},
\code{\link{conf_mat}()},
\code{\link{export_results}()},
\code{\link{gain_lift}()},
\code{\link{h2o_predict_API}()},
\code{\link{h2o_predict_MOJO}()},
\code{\link{h2o_predict_binary}()},
\code{\link{h2o_predict_model}()},
\code{\link{h2o_results}()},
\code{\link{h2o_selectmodel}()},
\code{\link{impute}()},
\code{\link{iter_seeds}()},
\code{\link{model_metrics}()},
\code{\link{mplot_conf}()},
\code{\link{mplot_cuts_error}()},
\code{\link{mplot_cuts}()},
\code{\link{mplot_density}()},
\code{\link{mplot_full}()},
\code{\link{mplot_gain}()},
\code{\link{mplot_importance}()},
\code{\link{mplot_lineal}()},
\code{\link{mplot_metrics}()},
\code{\link{mplot_response}()},
\code{\link{mplot_roc}()},
\code{\link{mplot_splits}()},
\code{\link{msplit}()}
}
\concept{Machine Learning}
