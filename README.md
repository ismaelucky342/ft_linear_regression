# **ft_linear_regression**

<div align="center">
  <img src="https://github.com/user-attachments/assets/cc6167c0-54b7-4a1e-bcbb-8a853283d82b" alt="ft_linear_regression">
</div>

### **Objective**


This project introduces you to the basics of machine learning by implementing a simple linear regression algorithm. You will create a program to predict the price of a car based on its mileage using a linear function trained with a gradient descent algorithm.

---

### **What is Linear Regression?**

Linear regression is a fundamental statistical method used in machine learning to model the relationship between a dependent variable yyy (e.g., car price) and one or more independent variables xxx (e.g., mileage).

In this project, we focus on **simple linear regression**, which deals with a single independent variable. The model assumes a linear relationship between the variables, represented as:

```latex
y = θ₀ + θ₁ * x
```

Where:

- `θ₀` (intercept) is the price when mileage is 0.
- `θ₁` (slope) represents how much the price changes for a unit change in mileage.

Using historical data (e.g., mileage and price of cars), the algorithm learns the best values for `θ₀` and `θ₁` to minimize the error between predicted and actual prices.

---

### **How Does Gradient Descent Work?**

Gradient descent is an optimization algorithm used to adjust the parameters `θ₀` and `θ₁`. It minimizes the cost function, which measures the difference between the predicted prices and the actual prices.

The cost function for linear regression is typically the **Mean Squared Error (MSE)**:

```latex
J(θ₀, θ₁) = (1 / 2m) * Σ [estimatePrice(mileageᵢ) - priceᵢ]²
```

Gradient descent updates the parameters iteratively using the following formulas:

```latex
tmpθ₀ = θ₀ - learningRate * (1 / m) * Σ [estimatePrice(mileageᵢ) - priceᵢ]
tmpθ₁ = θ₁ - learningRate * (1 / m) * Σ [estimatePrice(mileageᵢ) - priceᵢ] * mileageᵢ
```

Where:

- `learningRate`: Controls the size of the step toward the minimum.
- `m`: The number of data points in the dataset.

These updates are performed simultaneously for `θ₀` and `θ₁` until the cost function converges to a minimum.

---

### **Project Structure**

You need to implement two programs:

1. **Prediction Program:**
    - Prompts the user for a mileage value.
    - Predicts the car price using:
        
        ```latex
        estimatePrice(mileage) = θ₀ + (θ₁ * mileage)
        ```
        
    - Uses the precomputed values of `θ₀` and `θ₁` saved from the training program.
2. **Training Program:**
    - Reads a dataset (mileage and price).
    - Trains the model using gradient descent to calculate the optimal values for `θ₀` and `θ₁`.
    - Saves the computed parameters for the prediction program.

---

### **Bonus Features (Optional)**

- **Data Visualization:**
    - Plot the dataset points to observe their distribution.
    - Overlay the regression line to verify the result visually.
- **Algorithm Accuracy:**
    - Calculate the precision of your algorithm to evaluate its performance.

---

### Key concepts

1. Understand the mathematical concepts of linear regression and gradient descent.
2. Implement the **prediction** program with a simple formula.
3. Develop the **training** program to compute `θ₀` and `θ₁` using gradient descent.
4. Validate the implementation with a dataset.
5. Visualize the data and regression line, and calculate algorithm accuracy.

---

## Extras

This project serves as an excellent introduction to machine learning, enabling you to understand core concepts while building a practical implementation of one of the most basic algorithms in the field.

-Born2code

![image](https://github.com/user-attachments/assets/c5eb39da-98b2-4bc4-aff5-d726e9e18007)
