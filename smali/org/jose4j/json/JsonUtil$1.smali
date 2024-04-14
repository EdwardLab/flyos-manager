.class final Lorg/jose4j/json/JsonUtil$1;
.super Ljava/lang/Object;
.source "JsonUtil.java"

# interfaces
.implements Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/json/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public creatArrayContainer()Ljava/util/List;
    .locals 1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public createObjectContainer()Ljava/util/Map;
    .locals 1

    .line 53
    new-instance v0, Lorg/jose4j/json/JsonUtil$DupeKeyDisallowingLinkedHashMap;

    invoke-direct {v0}, Lorg/jose4j/json/JsonUtil$DupeKeyDisallowingLinkedHashMap;-><init>()V

    return-object v0
.end method
