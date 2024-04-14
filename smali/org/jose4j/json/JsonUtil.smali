.class public Lorg/jose4j/json/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/json/JsonUtil$DupeKeyDisallowingLinkedHashMap;
    }
.end annotation


# static fields
.field private static final CONTAINER_FACTORY:Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/jose4j/json/JsonUtil$1;

    invoke-direct {v0}, Lorg/jose4j/json/JsonUtil$1;-><init>()V

    sput-object v0, Lorg/jose4j/json/JsonUtil;->CONTAINER_FACTORY:Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    .line 62
    sget-object v1, Lorg/jose4j/json/JsonUtil;->CONTAINER_FACTORY:Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    invoke-virtual {v0, p0, v1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Lorg/jose4j/lang/JoseException;

    const-string v0, "Parsing returned null"

    invoke-direct {p0, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 75
    new-instance v0, Lorg/jose4j/lang/JoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting a JSON object at the root but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 71
    :goto_0
    new-instance v0, Lorg/jose4j/lang/JoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lorg/jose4j/json/internal/json_simple/JSONValue;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeJson(Ljava/util/Map;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    return-void
.end method
