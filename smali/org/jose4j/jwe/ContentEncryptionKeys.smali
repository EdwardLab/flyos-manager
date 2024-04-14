.class public Lorg/jose4j/jwe/ContentEncryptionKeys;
.super Ljava/lang/Object;
.source "ContentEncryptionKeys.java"


# instance fields
.field private final contentEncryptionKey:[B

.field private final encryptedKey:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/jose4j/jwe/ContentEncryptionKeys;->contentEncryptionKey:[B

    if-nez p2, :cond_0

    .line 31
    sget-object p2, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    :cond_0
    iput-object p2, p0, Lorg/jose4j/jwe/ContentEncryptionKeys;->encryptedKey:[B

    return-void
.end method


# virtual methods
.method public getContentEncryptionKey()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionKeys;->contentEncryptionKey:[B

    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionKeys;->encryptedKey:[B

    return-object v0
.end method
