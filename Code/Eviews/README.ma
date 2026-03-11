Time Series Modeling Workflow The following steps summarize the time series modeling procedure applied to the phosphate concentration data.

1. Initial Data Exploration
Sensor data recorded every 15 minutes
Variables: turbidity, specific conductance, temperature
Training period: Jan 1 – Mar 10 (40 days)
2. Trend and Intercept Analysis
A simple linear regression model was estimated to evaluate the baseline behavior of the phosphate series. Result:

Initial level ≈ 0.198 mg/L
Positive trend observed
Low explanatory power (R² ≈ 0.025)
3. Stationarity Test
The Augmented Dickey-Fuller (ADF) test was used to evaluate stationarity. Result:

p-value = 0.17
Null hypothesis (unit root) not rejected
Series is non-stationary
4. Differencing
First-order differencing was applied to achieve stationarity. Result:

ADF statistic = −9.48
p-value ≈ 0
Stationarity achieved after one differencing step.
5. ACF / PACF Analysis
Autocorrelation and partial autocorrelation plots indicated:

significant lag-1 and lag-2 effects
suitability of ARMA models.
6. Linear Time Series Models
The following models were evaluated:

AR(1)
MA(1)
ARMA(1,1) Model selection criteria:
AIC
BIC
Durbin-Watson
7. ARCH Effect Test
ARCH test on residuals indicated conditional heteroskedasticity. Conclusion: Variance depends on past residuals.

8. Volatility Models
To capture time-varying variance, the following models were evaluated:

ARCH(1)
GARCH(1)
GARCH(1,1) Best model: ARMA(1,1) – GARCH(1,1)
9. Residual Distribution Fitting
Residuals were fitted with:

Normal
Laplace
Logistic distributions Best fit based on AIC/BIC: Logistic distribution.
10. Anomaly Detection Threshold
Confidence intervals were derived from the logistic distribution: 95% CI 99% CI Values outside these intervals were flagged as anomalies
