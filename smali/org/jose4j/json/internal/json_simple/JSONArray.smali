.class public Lorg/jose4j/json/internal/json_simple/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.java"

# interfaces
.implements Lorg/jose4j/json/internal/json_simple/JSONAware;
.implements Lorg/jose4j/json/internal/json_simple/JSONStreamAware;


# static fields
.field private static final serialVersionUID:J = 0x36ed996451b68eedL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static toJSONString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1

    .line 89
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 92
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([B)Ljava/lang/String;
    .locals 1

    .line 119
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 122
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([BLjava/io/Writer;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([C)Ljava/lang/String;
    .locals 1

    .line 329
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 332
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([CLjava/io/Writer;)V

    .line 333
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 336
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([D)Ljava/lang/String;
    .locals 1

    .line 269
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 272
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([DLjava/io/Writer;)V

    .line 273
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 276
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([F)Ljava/lang/String;
    .locals 1

    .line 239
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 242
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([FLjava/io/Writer;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([I)Ljava/lang/String;
    .locals 1

    .line 179
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 182
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ILjava/io/Writer;)V

    .line 183
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([J)Ljava/lang/String;
    .locals 1

    .line 209
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 212
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([JLjava/io/Writer;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 216
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 359
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 362
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([Ljava/lang/Object;Ljava/io/Writer;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([S)Ljava/lang/String;
    .locals 1

    .line 149
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 152
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([SLjava/io/Writer;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static toJSONString([Z)Ljava/lang/String;
    .locals 1

    .line 299
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 302
    :try_start_0
    invoke-static {p0, v0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString([ZLjava/io/Writer;)V

    .line 303
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 306
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "null"

    if-nez p0, :cond_0

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 55
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v2, 0x5b

    .line 57
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x2c

    .line 62
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 64
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 66
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v2, p1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    goto :goto_0

    :cond_3
    const/16 p0, 0x5d

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public static writeJSONString([BLjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 102
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 104
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    aget-byte v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 109
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 110
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 114
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([CLjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 312
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 313
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 314
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "[\""

    .line 316
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 317
    aget-char v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 319
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, "\",\""

    .line 320
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 321
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "\"]"

    .line 324
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([DLjava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 252
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 254
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 256
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 257
    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 259
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 260
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 261
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 264
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([FLjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 222
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 224
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 226
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 227
    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 229
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 230
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 231
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 234
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([ILjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 162
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 164
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 167
    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 169
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 170
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 171
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 174
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([JLjava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 192
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 193
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 194
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 196
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 197
    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 199
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 200
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 201
    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 204
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 342
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 344
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 346
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 347
    aget-object v0, p0, v0

    invoke-static {v0, p1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    const/4 v0, 0x1

    .line 349
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 350
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lorg/jose4j/json/internal/json_simple/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/io/Writer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 354
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([SLjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 132
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 134
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 136
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    aget-short v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 139
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 140
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 141
    aget-short v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 144
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static writeJSONString([ZLjava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    .line 282
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, "[]"

    .line 284
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "["

    .line 286
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 287
    aget-boolean v0, p0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 289
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    const-string v1, ","

    .line 290
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 291
    aget-boolean v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    .line 294
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 1

    .line 371
    invoke-static {p0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->toJSONString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSONString(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {p0, p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;->writeJSONString(Ljava/util/Collection;Ljava/io/Writer;)V

    return-void
.end method
