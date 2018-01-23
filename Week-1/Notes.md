# Introduction
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
- Unsupervised ML is the ML task of inferring a function to describe hidden structure from "unlabeled" data. Examples of unsupervised learning tasks include clustering (where we try to discover underlying groupings of examples) and anomaly detection (where we try to infer if some examples in a dataset do not conform to some expected pattern).
- There is no feedback based on the prediction results with unsupervised learning.
    - E.g.: Orgnize computing clusters, Social network analysis, Market segmentation, Astronomical data analysis
- **Clustering Problem Example**: Automatically group a huge amount of genes into groups that are somehow similar or related by different variables, such as lifespan, location, roles, and so on.
- **Non-clustering Problem Example**: The "Cocktail Party Algorithm", allows you to find structure in a chaotic environment.
    - [Source separation](https://en.wikipedia.org/wiki/Source_separation): Cocktail party problem 
**`[W,s,v]=svd((repmat(sum(x.*x,1),size(x,1),1).*x)*x');`**  
    - [GNU Octave](https://www.gnu.org/software/octave/), a great PL for algorithm prototyping
    

# Model and Cost Function
## Model Representation
### Notatoin
m = number of training examples  
x's = "input" variable / features  
y's = "output" variable / "target" variable  
(x,y) = one training example  
(x<sup>(i)</sup>, y<sup>(i)</sup>) = i<sup>th</sup> training example  
&theta;<sub>i</sub> = i<sup>th</sup> parameter of model

Hypothesis:  h<sub>&theta;</sub>(x) = &theta;<sub>o</sub> x + &theta;<sub>1</sub>x


# Parameter Learning
## Cost Function  
[MSE]: /assets/week-1/week1-mse.png "mse"
![alt_text][MSE]
Please refer to [Squared Error Function](https://en.wikipedia.org/wiki/Mean_squared_error) (aka, Mean squared error)

## Gradient Descent
[3DGD]: /assets/week-1/week1-gradient-descent-3d.png "3d-gradient-descent"
![alt_text][3DGD]

[GD]: /assets/week-1/week1-gradient-descent.png "mse"
![alt_text][GD]

**"Batch" Gradient Descent**: Each step of gradient descent uses all the training examples.

##### Facts
- Gradient descent can converge even if &alpha; is kept fixed. (But &alpha; cannot be too large, or else it may fail to converge).
- For the specific choice of cost function *J* used in linear regression, there are no local optima (other than the global optimum).

# Basic Linear Algebra Review
- Skipped

#### Side notes
1. Univariate = one variable