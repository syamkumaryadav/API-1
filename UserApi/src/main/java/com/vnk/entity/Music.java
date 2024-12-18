package com.vnk.entity;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;
@Entity
@RequiredArgsConstructor
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Music {
    @Id
    @SequenceGenerator(initialValue = 1,name = "music_seq",allocationSize = 1,sequenceName = "music_sequence")
    @GeneratedValue(strategy = GenerationType.SEQUENCE ,generator = "music_seq")
    private Long id; 
    @Nonnull
    @Column(length = 50)
    private String title;
    @Nonnull
    @Column(length = 100)
    private String album;   
    @Nonnull     
    private String url;  
    @Nonnull
    private String coverImageUrl;   
}