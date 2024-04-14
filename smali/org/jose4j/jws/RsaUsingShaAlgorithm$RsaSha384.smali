.class public Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaSha384;
.super Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.source "RsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsaSha384"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RS384"

    const-string v1, "SHA384withRSA"

    .line 97
    invoke-direct {p0, v0, v1}, Lorg/jose4j/jws/RsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
