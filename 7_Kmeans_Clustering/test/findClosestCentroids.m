function idx = findClosestCentroids(X, centroids)

K = size(centroids, 1);

idx = zeros(size(X,1), 1);

for i = 1:size(X,1),
  mDist = 10^6;
  for j = 1:K,
    dist=sum((X(i,:) - centroids(j,:)).^2);
    if dist < mDist,
      mDist = dist;
      idx(i) = j;
    end
  end
end  
end

