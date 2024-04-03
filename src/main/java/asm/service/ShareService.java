package asm.service;

import asm.entity.Share;
import asm.entity.User;
import asm.entity.Video;

public interface ShareService {
	Share create(User user, Video video, String emailShare);
}
