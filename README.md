# Housing Price Predictions
## Project Overview:
The goal of this project is to develop a machine-learning model for predicting housing prices in Rhode Island. The model will consider various features such as square footage, the number of bedrooms, location, and other relevant factors. The project will encompass data collection, preprocessing, model training, evaluation, and potential deployment. We will employ Scikit-learn for machine learning, Python Pandas for data manipulation, and Matplotlib for data visualization.

### Data Collection and Exploration

Identify and procure a dataset containing housing-related features and Rhode Island-specific price data.
Load the dataset into a Jupyter Notebook for analysis.
Conduct an exploratory data analysis to gain insights into the dataset's structure and characteristics.
Address data quality issues, including handling missing data, duplicates, and outliers.

### Data Preprocessing

Preprocess categorical features, employing techniques like one-hot encoding or label encoding.
Normalize or scale numerical features to ensure consistent scaling across features.
Split the dataset into training and testing subsets for model development and evaluation.

### Model Selection and Training

Choose appropriate regression algorithms for the task, including Linear Regression and Random Forest Regression.
Implement cross-validation by dividing the training data into folds to facilitate model selection.
Train and evaluate multiple models, selecting the best-performing model based on evaluation metrics.
Model Evaluation

Assess the selected model's performance using the test dataset.
Calculate evaluation metrics such as Mean Absolute Error, R-squared, and Root Mean Square Error.
Visualize the model's performance using Matplotlib for easy interpretation.
Project Presentation

Prepare a presentation summarizing the project's objectives, methodology, and results.
Outline the key components of the presentation, including insights derived from the model.

### Resources:

Proficiency in Python programming.
Jupyter Notebook for code development.
Scikit-learn for machine learning.
Python Pandas for data manipulation.
Matplotlib for data visualization.
GitHub or a version control platform for project management.
Data Source:
[USA Real Estate Dataset on Kaggle](https://www.kaggle.com/datasets/ahmedshahriarsakib/usa-real-estate-dataset)

### Deliverables:

Jupyter Notebook containing code and comprehensive documentation.
Project report detailing the project's objectives, methodology, and results.
Project presentation to convey findings to stakeholders.
Deployment of the model if applicable.

### Risks and Challenges:

Data availability and quality, particularly for Rhode Island-specific data.
The possibility that model performance may not meet initial expectations.
Time constraints for fine-tuning, model deployment, and project completion.

### Limitations:

1. **Impact of Outdated Remodeling:** The condition of house remodeling can significantly affect price estimation, even when other factors remain constant. This model does not account for variations in the current condition of houses, potentially leading to price estimation errors.

2. **Exclusion of Foreclosure and Bank-Owned Properties:** The dataset used for this project may not include data on foreclosure properties and bank-owned real estate, which can have distinct pricing dynamics. Therefore, the model's predictions may not be applicable to these property types.

### Conclusion:
This project plan provides a structured approach for developing a Housing Price Prediction model tailored to Rhode Island using machine learning techniques. It is essential to adhere to this plan rigorously, document each step meticulously, and adapt as needed based on project progress and challenges encountered throughout the process. The ultimate goal is to create a reliable model that offers valuable insights for housing price predictions specific to Rhode Island.

# Analysis
Our project embarked with a meticulous data acquisition process, aimed at gathering and preparing data while upholding the highest standards of quality and integrity. We procured an extensive dataset through Kaggle, sourced directly from realtor.com, which served as a comprehensive wellspring of the data required for our investigation.

#### Data Exploration

Upon importing the dataset into our SQL environment, we embarked on an in-depth examination of its characteristics. This exploratory phase involved the analysis of data distribution, pattern identification, and the identification of potential outliers. These qualitative insights laid the groundwork for subsequent quantitative analysis.

Upon transitioning the data into Python, we initiated the data cleaning process utilizing dataframes. This involved the removal of rows with missing values, with particular attention to rows lacking data related to house size. While these initially appeared to represent undeveloped lots, our project's focus on the sale of existing houses necessitated their exclusion. Additionally, we eliminated rows with null values for the number of bathrooms, as these suggested errors. To ensure data integrity, we removed duplicates while retaining the original entries. Furthermore, we filled null values in the "acre lots" category with zeros, considering this data as representative of apartments, and filled null values in "bed" categories considering the layout of loft/studio apartments.

Three outliers, characterized by an unusually high number of bedrooms and bathrooms (32), were identified. Notably, these outliers exhibited correlated pricing, leading to their retention in the dataset. The dataset was then partitioned into features (bedrooms, bathrooms, acreage, zip code, and house size) and the target variable (price). Subsequently, data normalization and standardization techniques were applied to facilitate model training and testing.

#### Model Development

Building upon our comprehensive data exploration, we transitioned into the model development phase, integrating advanced analytical methodologies encompassing machine learning and statistical modeling. It was within this stage that we designed predictive models capable of generating invaluable insights.

The journey commenced with a linear regression model. Our initial attempt yielded an R-squared value of 0.3578, indicative of relatively low accuracy. Subsequently, a second iteration aimed at enhancing accuracy by removing zip code values, inadvertently reduced the model's effectiveness, resulting in an R-squared value of 0.3443. This consistent low accuracy underscored the significant influence of zip codes on housing prices.

Our analytical journey also led us to explore neural networks; however, it became apparent that this approach was ill-suited for the linear regression model due to inconsistent data outcomes.

Subsequently, we embarked on another endeavor, this time employing a Random Forest model. With a setting of 100 n_estimators (or number of trees), this model proved to be the most successful, yielding an impressive R-squared value of 0.9766. In addition to this, the model exhibited a root mean square error of 80394, and a mean absolute error of 5615. These error rates are notably low when compared to the substantial standard deviation of the dataset, which stood at 531,175. These results underscore the high level of accuracy in our price predictions, translating to a practical margin of error amounting to just $5615.


We also conducted a comprehensive analysis of feature importances, with the number of bathrooms emerging as the most influential (0.437), followed by acreage (0.191), zip code (0.118), and house size (0.165). Bedrooms exhibited the lowest importance (0.089).

#### Visuals

Incorporated into our analysis were various visual aids, each offering unique insights:

1. **Correlation Matrix**: This visualization illuminated the strength and nature of associations within the dataset. Deep red hues indicated robust positive correlations, while deep blue shades signified negative relationships. Notable correlations were found between variables such as bedrooms and house size, bathrooms and house size, bathrooms and price, and bedrooms and bathrooms.

2. **Regression Plot**: Our regression plot showcased a strong alignment between predicted and actual prices, indicating minimal prediction errors.

3. **Violin Plot**: A violin plot offered a clear depiction of the price range for the 20 most frequently occurring zip codes, allowing for a nuanced understanding of geographic pricing dynamics.

4. **Distribution Histogram Plot**: This visualization revealed a strong correlation between actual and predicted prices, underscoring the accuracy of our predictive models.

These visual representations added depth and clarity to our analytical findings, enhancing our understanding of the dataset and the underlying factors influencing housing prices.

In summary, our project encapsulates a rigorous journey from data acquisition and exploration to model development, culminating in the generation of valuable insights. The profound impact of zip codes on housing prices, the precision of our predictive models, and the strength of inter-variable correlations significantly contribute to our comprehensive data analysis.

