.class Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/SimpleJwkFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Criteria"
.end annotation


# instance fields
.field noValueOk:Z

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->value:Ljava/lang/String;

    .line 149
    iput-boolean p2, p0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->noValueOk:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public meetsCriteria(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 156
    iget-boolean p1, p0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->noValueOk:Z

    return p1

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
