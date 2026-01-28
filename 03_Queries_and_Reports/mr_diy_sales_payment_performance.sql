SELECT
    ST.TransactionID,
    ST.TransactionDate,
    P.PaymentID,
    P.PaymentType,
    PR.PromoName,
    PR.PromoCode,
    R.ReviewID,
    R.RatingValue,
    D.DeliveryID,
    D.DeliveryMethod,
    D.DeliveryStatus,
    ITS.SystemName,
    ITS.VersionNumber
FROM
    SalesTransaction ST
JOIN
    Payment P ON ST.TransactionID = P.TransactionID
JOIN
    Promotion PR ON ST.PromoCode = PR.PromoCode
JOIN
    Review R ON ST.TransactionID = R.TransactionID
JOIN
    Delivery D ON ST.TransactionID = D.TransactionID
JOIN
    ITSystem ITS ON ST.SystemID = ITS.SystemID
WHERE
    P.PaymentType = 'Credit Card'
    AND PR.PromoName = 'Sale'
    AND D.DeliveryStatus = 'Completed'; 

