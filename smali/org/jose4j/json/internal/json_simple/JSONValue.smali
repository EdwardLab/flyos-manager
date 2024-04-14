.class public Lorg/jose4j/json/internal/json_simple/JSONValue;
.super Ljava/lang/Object;
.source "JSONValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static escape(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6

    .line 271
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 273
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_8

    const/16 v4, 0xd

    if-eq v3, v4, :cond_7

    const/16 v4, 0x22

    if-eq v3, v4, :cond_6

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    if-ltz v3, :cond_0

    const/16 v4, 0x1f

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x2000

    if-lt v3, v4, :cond_4

    const/16 v4, 0x20ff

    if-gt v3, v4, :cond_4

    .line 299
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u"

    .line 300
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 301
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_3

    const/16 v5, 0x30

    .line 302
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 304
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 307
    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const-string v3, "\\n"

    .line 288
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    const-string v3, "\\t"

    .line 294
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    const-string v3, "\\b"

    .line 282
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v3, "\\\\"

    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const-string v3, "\\\""

    .line 276
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v3, "\\r"

    .line 291
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v3, "\\f"

    .line 285
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1

    .line 46
    :try_start_0
    new-instance v0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 75
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-static {v0}, Lorg/jose4j/json/internal/json_simple/JSONValue;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    .line 98
    invoke-virtual {v0, p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;

    invoke-direct {v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;-><init>()V

    .line 103
    invoke-virtual {v0, p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 242
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 245
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "null"

    if-nez p0, :cond_0

    .line 122
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v0, 0x22

    .line 127
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 128
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    return-void

    .line 133
    :cond_1
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 134
    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 141
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    .line 142
    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 143
    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    return-void

    .line 149
    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_9
    instance-of v0, p0, Lorg/jose4j/json/internal/json_simple/JSONStreamAware;

    if-eqz v0, :cond_a

    .line 160
    check-cast p0, Lorg/jose4j/json/internal/json_simple/JSONStreamAware;

    invoke-interface {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONStreamAware;->writeJSONString(Ljava/io/Writer;)V

    return-void

    .line 164
    :cond_a
    instance-of v0, p0, Lorg/jose4j/json/internal/json_simple/JSONAware;

    if-eqz v0, :cond_b

    .line 165
    check-cast p0, Lorg/jose4j/json/internal/json_simple/JSONAware;

    invoke-interface {p0}, Lorg/jose4j/json/internal/json_simple/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 170
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONObject;->writeJSONString(Ljava/util/Map;Ljava/io/Writer;)V

    return-void

    .line 174
    :cond_c
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    .line 175
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V

    return-void

    .line 179
    :cond_d
    instance-of v0, p0, [B

    if-eqz v0, :cond_e

    .line 180
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([BLjava/io/Writer;)V

    return-void

    .line 184
    :cond_e
    instance-of v0, p0, [S

    if-eqz v0, :cond_f

    .line 185
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([SLjava/io/Writer;)V

    return-void

    .line 189
    :cond_f
    instance-of v0, p0, [I

    if-eqz v0, :cond_10

    .line 190
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ILjava/io/Writer;)V

    return-void

    .line 194
    :cond_10
    instance-of v0, p0, [J

    if-eqz v0, :cond_11

    .line 195
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([JLjava/io/Writer;)V

    return-void

    .line 199
    :cond_11
    instance-of v0, p0, [F

    if-eqz v0, :cond_12

    .line 200
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([FLjava/io/Writer;)V

    return-void

    .line 204
    :cond_12
    instance-of v0, p0, [D

    if-eqz v0, :cond_13

    .line 205
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([DLjava/io/Writer;)V

    return-void

    .line 209
    :cond_13
    instance-of v0, p0, [Z

    if-eqz v0, :cond_14

    .line 210
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ZLjava/io/Writer;)V

    return-void

    .line 214
    :cond_14
    instance-of v0, p0, [C

    if-eqz v0, :cond_15

    .line 215
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([CLjava/io/Writer;)V

    return-void

    .line 219
    :cond_15
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 220
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([Ljava/lang/Object;Ljava/io/Writer;)V

    return-void

    .line 224
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    return-void
.end method
