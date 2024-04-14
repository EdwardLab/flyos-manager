.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
.super Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.source "HmacUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "HS256"

    const-string v1, "HmacSHA256"

    const/16 v2, 0x100

    .line 112
    invoke-direct {p0, v0, v1, v2}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
