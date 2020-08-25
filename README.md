# DFManipulationComparison

This project demonstrates a comparison of the efficiency of various methods to manipulate a dataframe in Python.

Iteration in computer programming is a primary tool used in a variety of problems. Therefore, one of the first ideas that comes to mind when dealing with a Pandas DataFrame object is how do you iterate through the DataFrame? The answer is don't. Unfortunately, one of the first and most popular accepted answers that appears on a [simple Google search](https://stackoverflow.com/a/16476974) yields that `iterrows()` should be used. This project will show that not only is `iterrows()` a poor method to manipulate a DataFrame, it is in fact one of the worst ways to manipulate a DataFrame.


## Getting Started

Following these instructions will allow for you to run the Jupyter Notebook locally.

### Prerequisites

Running this notebook requires an IDE such as PyCharm or launching a local server and the ability to install the packages listed at the top of the notebook. Furthermore, it is necessary to have Python installed as well.

### Installing

1. Use `git clone` to clone this repository locally
2. Open `DataframeManipulationTypes.ipynb` and ensure the specified packages have been installed
3. To ensure the Cython code cells run properly locally, run `python setup.py build_ext --inplace` to create the support C files
4. Run the notebook file
    * Note: The shape of the dataframe is approximately 164468x11 which is quite large to iterate through. If the notebook is taking too long to execute, reduce the `iterations` variable. This will reduce the number of values produced for a mean for the bar chart. Increasing the `divisor` variable will also speed up the time to execute the notebook. This variable controls the number of rows removed after every iteration to produce the line graph.

## Output

Running the notebook will output three figures and one table.

### Figures

* Fertilizer graph: Stacked bar graph produced from dataset
* Iteration time bar graph: Mean time of manipulation types bar graph
* Iteration time line graph: Graph of amount of time required for manipulation for a decreasing number of rows

### Table

* Iteration time scatter plot line of best fit stats: stats for each line of best fit for a scatter plot produced from the data of the line graph (outputted as table because `seaborn` does not display this information on graphs

## Built With

* [PyCharm](https://www.jetbrains.com/pycharm/) - IDE
* [Python](https://www.python.org/) - language
* [Cython](https://cython.org/) - language
* [Pandas](https://pandas.pydata.org/), [NumPy](https://numpy.org/), [Matplotlib](https://matplotlib.org/), [seaborn](https://seaborn.pydata.org/), [SciPy](https://www.scipy.org/) - packages

## License

This project is licensed under the [Creative Commons Zero](https://creativecommons.org/share-your-work/public-domain/cc0/) license - see the LICENSE.md file for more details.
