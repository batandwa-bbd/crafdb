--liquibase formatted sql

--changeset emokoena:CreateOderItemsForCustomerOrder
CREATE PROCEDURE CreateOderItemsForCustomerOrder(
   beer_id integer,  
   order_id integer,
   inout quantity integer
)
LANGUAGE plpgsql    
AS 
$$
    INSERT INTO OrderItem(OrderID, KegID, OrderItemStateID, PriceAtSale)
    SELECT 
        order_id,
        kg.KegID,
        0,
        br.PricePerKeg
    FROM Keg kg
    INNER JOIN Beer br on br.BeerID = kg.BeerID
    WHERE NOT EXISTS (
        SELECT 
            KegID, 
            OrderItemStateID 
        FROM OrderItem oi 
        WHERE oi.KegID = kg.KegID
        AND oi.OrderItemStateID IN (0, 1, 2, 3)
    )
    AND kg.BeerID = beer_id
    LIMIT quantity;

    GET DIAGNOSTICS quantity := ROW_COUNT;
    COMMIT;
$$;
-- rollback DROP PROCEDURE IF EXISTS CreateOderItemsForCustomerOrder(INTEGER,INTEGER,INTEGER);
