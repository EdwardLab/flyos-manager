.class public Lkawa/standard/char_ready_p;
.super Ljava/lang/Object;
.source "char_ready_p.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ready(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    .line 8
    :try_start_0
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 9
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 10
    :cond_1
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_2

    .line 11
    check-cast p0, Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->ready()Z

    move-result p0

    return p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v1, "invalid argument to char-ready?"

    invoke-direct {p0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
