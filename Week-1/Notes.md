## What is Machine Learning?
Definition by Arthur Samuel(1959): Field of study that gives computers the ability to learn without being explicitly programmed.  
Definition by Tom Mitchell(1998): A computer program is said to *learn* form experience E with
respect to some task T and some performance measure P, if its performance on T, as measured by P,
improves with experience E.


## Supervised Learning
    - Supervised learning is the ML task of learning a way to map input signals to output values by training a model on a set of training examples where each example is a pair consisting of an input and a __desired__ output value.
    - **Regression Problem**: try to predict results within a *continuous* output (ie, map input variables to some continuous function)
        - E.g. House Price Prediction
    - **Classification Problem**:  try to predict results in a *discrete* output (ie, map input variables into discrete categories)
        - E.g. Cancer Categorization (malignant/benign tumor), Email spam/not spam.

## Unsupervised Learning
    - Unsupervised ML is the ML task of inferring a function to describe hidden structure from
      "unlabeled" data. Examples of unsupervised learning tasks include clustering (where we try to
      discover underlying groupings of examples) and anomaly detection (where we try to infer if
      some examples in a dataset do not conform to some expected pattern).
    - E.g.: Orgnize computing clusters, Social network analysis, Market segmentation, Astronomical
      data analysis
    - [Source separation](https://en.wikipedia.org/wiki/Source_separation): Cocktail party problem
**[W,s,v]=svd((repmat(sum(x.*x,1),size(x,1),1).*x)*x');**  
[GNU Octave](https://www.gnu.org/software/octave/), a great PL for algorithm prototyping
