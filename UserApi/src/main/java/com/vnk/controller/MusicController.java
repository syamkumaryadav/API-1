package com.vnk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.vnk.service.IMusicService;

@Controller
public class MusicController {
@Autowired
private IMusicService musicService;
}
