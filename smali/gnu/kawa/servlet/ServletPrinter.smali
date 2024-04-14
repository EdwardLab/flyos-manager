.class public Lgnu/kawa/servlet/ServletPrinter;
.super Lgnu/kawa/xml/HttpPrinter;
.source "ServletPrinter.java"


# instance fields
.field hctx:Lgnu/kawa/servlet/HttpRequestContext;


# direct methods
.method public constructor <init>(Lgnu/kawa/servlet/HttpRequestContext;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    new-instance v0, Lgnu/kawa/servlet/HttpOutputStream;

    invoke-direct {v0, p1, p2}, Lgnu/kawa/servlet/HttpOutputStream;-><init>(Lgnu/kawa/servlet/HttpRequestContext;I)V

    invoke-direct {p0, v0}, Lgnu/kawa/xml/HttpPrinter;-><init>(Ljava/io/OutputStream;)V

    .line 21
    iput-object p1, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Content-type"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-object p2, p0, Lgnu/kawa/xml/HttpPrinter;->sawContentType:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {p1, p2}, Lgnu/kawa/servlet/HttpRequestContext;->setContentType(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "Status"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_5

    if-lt v0, p1, :cond_1

    .line 40
    iget-object p1, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    iput v1, p1, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_2

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 p1, 0x20

    if-ne v2, p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 51
    :cond_3
    iget-object p1, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    iput v1, p1, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 52
    iget-object p1, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    goto :goto_1

    .line 58
    :cond_4
    iget-object v0, p0, Lgnu/kawa/servlet/ServletPrinter;->hctx:Lgnu/kawa/servlet/HttpRequestContext;

    invoke-virtual {v0, p1, p2}, Lgnu/kawa/servlet/HttpRequestContext;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public printHeaders()V
    .locals 0

    return-void
.end method

.method public reset(Z)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lgnu/kawa/servlet/ServletPrinter;->ostream:Ljava/io/OutputStream;

    check-cast v0, Lgnu/kawa/servlet/HttpOutputStream;

    invoke-virtual {v0}, Lgnu/kawa/servlet/HttpOutputStream;->reset()Z

    move-result v0

    invoke-super {p0, p1}, Lgnu/kawa/xml/HttpPrinter;->reset(Z)Z

    move-result p1

    and-int/2addr p1, v0

    return p1
.end method
