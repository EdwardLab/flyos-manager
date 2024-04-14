.class public Lcom/dreamers/bubbletabbar/repack/p;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/dreamers/bubbletabbar/repack/p;-><init>()V

    return-void
.end method

.method static a(II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 8

    new-instance v0, Lcom/dreamers/bubbletabbar/repack/r;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_0

    move p2, v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/dreamers/bubbletabbar/repack/r;-><init>(II)V

    check-cast v0, Lcom/dreamers/bubbletabbar/repack/o;

    instance-of p2, p0, Ljava/lang/String;

    const-string v2, "other"

    if-eqz p2, :cond_2

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    iget p2, v0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    iget v0, v0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    if-gt p2, v0, :cond_9

    :goto_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-string v6, "$this$regionMatches"

    invoke-static {v3, v6}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4, p2, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    return p2

    :cond_1
    if-eq p2, v0, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget p2, v0, Lcom/dreamers/bubbletabbar/repack/o;->a:I

    iget v0, v0, Lcom/dreamers/bubbletabbar/repack/o;->b:I

    if-gt p2, v0, :cond_9

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string v4, "$this$regionMatchesImpl"

    invoke-static {p1, v4}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ltz p2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-ltz v5, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-le p2, v5, :cond_3

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_7

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int v7, p2, v5

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    const/4 v4, 0x0

    :cond_7
    if-eqz v4, :cond_8

    return p2

    :cond_8
    if-eq p2, v0, :cond_9

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    const-string v0, "$this$indexOf"

    invoke-static {p0, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/dreamers/bubbletabbar/repack/p;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    :goto_0
    if-ltz p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/dreamers/bubbletabbar/repack/p;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    if-ltz p0, :cond_3

    return v1

    :cond_3
    return v2
.end method
