package com.vnk.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vnk.entity.Music;

public interface MusicRepository extends JpaRepository<Music, Integer> {
}
