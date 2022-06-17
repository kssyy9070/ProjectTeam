package com.pk.pt.review;

import java.util.List;

public interface ReviewMapper {
	
	public abstract List<Review> getReview(Review r);
	public abstract int regReview(Review r);

}
