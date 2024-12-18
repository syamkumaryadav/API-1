package com.vnk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vnk.entity.Music;
import com.vnk.repository.MusicRepository;

@Service
public class MusicService implements IMusicService {
	@Autowired
	private MusicRepository musicRepository;

	@Override
	public String addmusic(Music music) {
		Music save = musicRepository.save(music);
		return save.getTitle() + " added";
	}

	@Override
	public List<Music> paymusic() {
		return musicRepository.findAll();
	}
}
