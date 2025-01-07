# Truck Route Analysis and Feature Engineering

## Overview

This repository provides an end-to-end framework for analyzing truck routes, driver performance, and traffic patterns, with a focus on building and managing feature stores using Hopsworks. The project demonstrates the integration of various data sources, data preprocessing, and exploratory data analysis (EDA) techniques. It also explores how to build machine learning-ready feature sets for predictive modeling, such as estimating truck arrival times and analyzing delays.

---

## System Requirements

- **Python Version**: 3.10.2

---

## Library Requirements

To install the required libraries, use the following command:

```bash
pip install -r requirements.txt
```

**Dependencies:**
- pymysql==1.1.0
- psycopg2==2.9.7
- pandas==1.5.3
- numpy==1.23.5
- matplotlib==3.7.1
- seaborn==0.12.2
- hopsworks==3.2.0

---

## Key Features

1. **Database Connectivity**:
   - Connect to PostgreSQL and MySQL databases to fetch data.
   - Execute SQL queries to retrieve route, driver, traffic, and weather data.

2. **Exploratory Data Analysis**:
   - Analyze datasets with visualization libraries like `matplotlib` and `seaborn`.
   - Explore distributions of key metrics (e.g., driver ratings, truck mileage, traffic volume).

3. **Feature Engineering**:
   - Build robust feature sets for machine learning using Hopsworks.
   - Create feature groups for drivers, trucks, routes, schedules, traffic, and weather data.
   - Update feature metadata and compute statistics for monitoring.

4. **Insights and Recommendations**:
   - Identify patterns in driver ratings, average speeds, and traffic volume.
   - Provide actionable recommendations for improving driver assignments, truck maintenance, and scheduling.

---

## Setup Instructions

1. Clone the repository:
   ```bash
   git clone https://github.com/jabrunin001/truck-delay-classification-ml-pipeline.git
   cd truck-route-analysis
   ```

2. Install the required libraries:
   ```bash
   pip install -r requirements.txt
   ```

3. Configure database credentials in the connection setup sections:
   - **PostgreSQL**: `psycopg2.connect(...)`
   - **MySQL**: `pymysql.connect(...)`

4. Initialize the Hopsworks project:
   ```python
   import hopsworks
   project = hopsworks.login()
   ```

---

## Exploratory Data Analysis (EDA)

### Data Exploration Functions
- **`shape`**: Check dataset dimensions.
- **`head` / `tail`**: Preview dataset rows.
- **`describe`**: Get statistical summaries.
- **`isnull`**: Identify missing values.
- **`dropna`**: Remove rows or columns with missing data.
- **`.columns`**: View dataset column names.

### Visualizations
- Histograms and KDE plots to analyze distributions (e.g., driver age, truck mileage).
- Scatter plots and box plots for relationship analysis (e.g., ratings vs. speed, gender vs. ratings).

---

## Feature Engineering with Hopsworks

### Feature Groups Created
1. **Drivers**:
   - Key Features: `age`, `experience`, `ratings`, `average_speed_mph`.
2. **Trucks**:
   - Key Features: `truck_age`, `mileage_mpg`, `load_capacity_pounds`.
3. **Routes**:
   - Key Features: `distance`, `average_hours`, `route_id`.
4. **Traffic**:
   - Key Features: `hour`, `no_of_vehicles`, `accident`.
5. **Weather**:
   - Key Features: `temperature`, `humidity`, `visibility`.
6. **Truck Schedules**:
   - Key Features: `departure_date`, `estimated_arrival`, `delay`.

### Statistics and Metadata
- Enabled histograms and correlations for all feature groups.
- Updated feature descriptions for metadata clarity.

---

## Key Learnings

1. What are end-to-end machine learning pipelines and why are they important?
2. How to create and configure an AWS RDS instance.
3. How to connect to databases using MySQL Workbench and PgAdmin4.
4. Techniques for data analysis using SQL.
5. Setting up and leveraging AWS Sagemaker Notebooks.
6. Fetching and preprocessing data from AWS RDS and Hopsworks.
7. Principles of feature engineering and metadata management.

---

## Insights and Recommendations

### Drivers
- Older drivers may require adjusted schedules to avoid fatigue.
- Training programs can address performance gaps indicated by low ratings.

### Trucks
- Replace older trucks with low mileage to improve operational efficiency.
- Implement strategies to enhance fuel efficiency, like maintenance and driver education.

### Traffic
- Optimize route schedules to avoid peak traffic times (e.g., evening and morning rush hours).

---

## Next Steps

1. Expand feature engineering to include more advanced derived features.
2. Explore machine learning models for predicting delays.
3. Integrate real-time data sources for dynamic updates.

---

## Contributing

Contributions are welcome! Please submit pull requests or open issues for any improvements or suggestions.

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contact

For questions or feedback, reach out!
