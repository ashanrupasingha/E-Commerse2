package org.example.ecommerse2.DTO;

import org.example.ecommerse2.Entity.Category;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ProductDTO {
    private int productId;
    private String name;
    private Double price;
    private String description;
    private int quantity;
    private String imagePath;
    private Category category;
}