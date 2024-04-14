.class public abstract Lorg/jose4j/jwa/AlgorithmInfo;
.super Ljava/lang/Object;
.source "AlgorithmInfo.java"

# interfaces
.implements Lorg/jose4j/jwa/Algorithm;


# instance fields
.field private algorithmIdentifier:Ljava/lang/String;

.field private javaAlgorithm:Ljava/lang/String;

.field private keyPersuasion:Lorg/jose4j/keys/KeyPersuasion;

.field private keyType:Ljava/lang/String;

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwa/AlgorithmInfo;->log:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmInfo;->algorithmIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getJavaAlgorithm()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmInfo;->javaAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmInfo;->keyPersuasion:Lorg/jose4j/keys/KeyPersuasion;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmInfo;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithmIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/jose4j/jwa/AlgorithmInfo;->algorithmIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setJavaAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/jose4j/jwa/AlgorithmInfo;->javaAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/jose4j/jwa/AlgorithmInfo;->keyPersuasion:Lorg/jose4j/keys/KeyPersuasion;

    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/jose4j/jwa/AlgorithmInfo;->keyType:Ljava/lang/String;

    return-void
.end method
