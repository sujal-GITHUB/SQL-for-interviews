-- Write a query to find the most recent transaction for each customer.

SELECT *
FROM transactions t1
WHERE transaction_date = (  
    SELECT MAX(transaction_date)
    FROM transactions t2
    WHERE t1.customer_id = t2.customer_id
    );