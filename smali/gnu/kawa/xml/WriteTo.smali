.class public Lgnu/kawa/xml/WriteTo;
.super Lgnu/mapping/Procedure2;
.source "WriteTo.java"


# static fields
.field public static final writeTo:Lgnu/kawa/xml/WriteTo;

.field public static final writeToIfChanged:Lgnu/kawa/xml/WriteTo;


# instance fields
.field ifChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeTo:Lgnu/kawa/xml/WriteTo;

    .line 16
    new-instance v0, Lgnu/kawa/xml/WriteTo;

    invoke-direct {v0}, Lgnu/kawa/xml/WriteTo;-><init>()V

    sput-object v0, Lgnu/kawa/xml/WriteTo;->writeToIfChanged:Lgnu/kawa/xml/WriteTo;

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    new-instance v0, Lgnu/mapping/OutPort;

    invoke-direct {v0, p2, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;Lgnu/text/Path;)V

    .line 23
    new-instance p2, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 24
    invoke-virtual {p1}, Lgnu/text/Path;->getExtension()Ljava/lang/String;

    move-result-object p1

    const-string v1, "html"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p2, v1}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-static {p0, p2}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 28
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    return-void
.end method

.method public static writeTo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 35
    invoke-static {p0, p1, v0}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 43
    invoke-static {p0, p1, v0}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Lgnu/text/Path;Ljava/io/OutputStream;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 47
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 51
    array-length v4, p0

    if-ne v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-gez v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_2
    if-nez v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 59
    aget-byte v2, p0, v2

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_0

    .line 62
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :catchall_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lgnu/text/Path;->openOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lgnu/kawa/xml/WriteTo;->ifChanged:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lgnu/kawa/xml/WriteTo;->writeToIfChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lgnu/kawa/xml/WriteTo;->writeTo(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    :goto_0
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method
