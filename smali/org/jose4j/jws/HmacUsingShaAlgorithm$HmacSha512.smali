.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;
.super Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.source "HmacUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "HS512"

    const-string v1, "HmacSHA512"

    const/16 v2, 0x200

    .line 128
    invoke-direct {p0, v0, v1, v2}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
