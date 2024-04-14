.class Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/SimpleJwkFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyOpsCriteria"
.end annotation


# instance fields
.field noValueOk:Z

.field values:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->values:[Ljava/lang/String;

    .line 173
    iput-boolean p2, p0, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->noValueOk:Z

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;-><init>([Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public meetsCriteria(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 180
    iget-boolean p1, p0, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->noValueOk:Z

    return p1

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->values:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 186
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
