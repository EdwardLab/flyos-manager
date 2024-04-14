.class public final Lcom/google/appinventor/components/runtime/util/BoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    .line 29
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    .line 30
    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    .line 31
    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    return-void
.end method


# virtual methods
.method public final getBottom()D
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    return-wide v0
.end method

.method public final getLeft()D
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    return-wide v0
.end method

.method public final getRight()D
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    return-wide v0
.end method

.method public final getTop()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    return-wide v0
.end method

.method public final intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10

    .line 45
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    iget-wide v4, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 47
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    iget-wide v6, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 48
    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    iget-wide v8, p1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    cmpl-double p1, v0, v2

    if-gtz p1, :cond_1

    cmpl-double p1, v4, v6

    if-lez p1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    .line 57
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    .line 58
    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    .line 59
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<BoundingBox (left = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", top = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
