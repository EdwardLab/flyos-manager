.class final Lcom/google/appinventor/components/runtime/util/CsvUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CsvUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/regex/Pattern;

.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:J

.field private HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

.field private NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

.field private T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

.field private ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/Reader;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

.field private peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\"\""

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/regex/Pattern;

    const/16 v0, 0x2800

    new-array v0, v0, [C

    .line 104
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    .line 138
    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/Reader;

    return-void
.end method

.method private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b()V
    .locals 5

    .line 229
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    rsub-int v0, v0, 0x2800

    .line 230
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/Reader;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/Reader;->read([CII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 234
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    goto :goto_0

    .line 236
    :cond_0
    iget v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 240
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    .line 241
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I
    .locals 1

    .line 301
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result p1

    return p1
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)Z
    .locals 4

    .line 269
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    return v1

    .line 270
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    aget-char v0, v0, p1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_4

    .line 286
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Syntax Error: non-whitespace between closing quote and delimiter or end"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/2addr p1, v1

    .line 278
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result p1

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    aget-char v0, v0, p1

    if-ne v0, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result p1

    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    return v1

    :cond_4
    add-int/2addr p1, v1

    .line 283
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    return v1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Z
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    aget-char v0, v0, v1

    const/16 v2, 0x22

    if-ne v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(I)Z

    move-result v0

    return v0
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)I
    .locals 5

    .line 214
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    const/4 v1, 0x0

    .line 215
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    .line 216
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    sub-int/2addr v2, v0

    if-lez v2, :cond_0

    .line 218
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    invoke-static {v3, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :cond_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    .line 221
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:J

    sub-int/2addr p1, v0

    return p1
.end method

.method private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)Z
    .locals 2

    .line 251
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Syntax Error. unclosed quoted cell"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    const/4 p1, 0x0

    return p1

    .line 252
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    aget-char v0, v0, p1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    add-int/lit8 p1, p1, 0x1

    .line 253
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result p1

    .line 254
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    aget-char v0, v0, p1

    if-eq v0, v1, :cond_3

    .line 255
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    .line 256
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)Z

    move-result p1

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(I)Z
    .locals 4

    .line 305
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result p1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    return v1

    .line 306
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    aget-char v0, v0, p1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v2, 0x22

    if-eq v0, v2, :cond_2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 320
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Syntax Error: quote in unquoted cell"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Exception;

    const/4 p1, 0x0

    return p1

    .line 315
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    add-int/2addr p1, v1

    .line 316
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result p1

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    aget-char v0, v0, p1

    if-ne v0, v2, :cond_4

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(I)I

    move-result p1

    :cond_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    return v1

    .line 309
    :cond_5
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    add-int/2addr p1, v1

    .line 310
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    return v1
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I
    .locals 1

    .line 202
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    if-lez v0, :cond_0

    .line 203
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)I

    move-result p1

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b()V

    return p1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b()V

    .line 167
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    aget-char v3, v1, v2

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    .line 180
    new-instance v3, Ljava/lang/String;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_1
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    .line 183
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[C

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    add-int/2addr v5, v1

    sub-int/2addr v5, v3

    aget-char v4, v4, v5

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 186
    :goto_1
    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->NR00JNNlW621wVdOuGmKXPtjBpGajdPcd2Ky3026Pmc1Ihub1KfdGuuwHN0dv78V:I

    const/4 v1, -0x1

    .line 187
    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:I

    .line 188
    iget v1, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-lt v5, v1, :cond_3

    invoke-direct {p0, v5}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)I

    move-result v1

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:I

    if-ge v1, v5, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 189
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_5
    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
