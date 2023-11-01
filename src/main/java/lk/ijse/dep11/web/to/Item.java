package lk.ijse.dep11.web.to;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item implements Serializable {

    private String itemCode;
    private String description;
    private BigDecimal unitPrice;

}
