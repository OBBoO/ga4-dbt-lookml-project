### **README for GA4 dbt-to-Looker Project**

---

# GA4 dbt-to-Looker Integration

This project integrates **Google Analytics 4 (GA4)** data stored in **BigQuery** with **dbt** (data build tool) and **Looker**. It automates the creation of Looker view files using `dbt2looker`, allowing seamless data modeling and visualization.

---

## **Project Overview**

This project uses **dbt** to transform raw GA4 data in BigQuery into structured tables, which are then translated into **Looker views** via `dbt2looker`. The following key elements are included:

- **Data transformations**: Defined in dbt using models (`staging`, `core`, and `mart` layers).
- **Looker view files**: Generated based on dbt models and metadata using `dbt2looker`.
- **CI/CD-ready setup**: Easily extensible for continuous integration and deployment.
  
---

## **Project Structure**

- `models/`: Contains dbt models for the `staging`, `core`, and `mart` layers.
  - **staging**: Transforms raw GA4 data.
  - **core**: Further refines data from the staging layer.
  - **marts**: Business logic and final tables/views for reporting.
  
- `target/`: This is the output directory where dbt generates files such as `catalog.json`, which is necessary for `dbt2looker`.
  
- `dbt_project.yml`: dbt configuration file defining project settings, materializations, etc.

---

## **Setup Instructions**

### **Prerequisites**

1. **Python 3.7+**
2. **dbt** (installed and configured to work with your BigQuery project)
3. **Looker** (with API access for LookML generation)

### **Setup**

1. **Clone the repository**:

   ```bash
   git clone https://github.com/OBBoO/ga4-dbt-looker-project.git
   cd ga4-dbt-looker-project
   ```

2. **Set up virtual environment**:

   ```bash
   python3.7 -m venv dbt2looker-venv
   source dbt2looker-venv/bin/activate
   ```

3. **Install dependencies**:

   ```bash
   pip install dbt2looker
   ```

4. **Configure dbt**: Update `profiles.yml` with your BigQuery credentials and set up connection details.

5. **Generate dbt models**: Run the dbt models and generate the necessary files:

   ```bash
   dbt run
   ```

6. **Generate Looker view files**: 

   First, generate the `catalog.json`:

   ```bash
   dbt docs generate
   ```

   Then run `dbt2looker`:

   ```bash
   dbt2looker
   ```

   Optionally, generate views for specific models tagged with `prod`:

   ```bash
   dbt2looker --tag prod
   ```

---

## **Usage**

Once the setup is complete, you can run the following commands to:

- **Run dbt models**: Generate the dbt models and tables.
  
  ```bash
  dbt run
  ```

- **Generate Looker views**: Generate Looker views based on the dbt models.

  ```bash
  dbt2looker
  ```

- **Tag-specific Looker view generation**:

  ```bash
  dbt2looker --tag prod
  ```

---

## **Contributing**

Feel free to fork the project and submit pull requests! If you encounter any issues, open an issue on the GitHub repository.

---


## **Contact**

For any questions, reach out at [othmane.benbella98@gmail.com] or via the GitHub Issues section.
