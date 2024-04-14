.class public Lgnu/mapping/UnboundLocationException;
.super Ljava/lang/RuntimeException;
.source "UnboundLocationException.java"


# instance fields
.field column:I

.field filename:Ljava/lang/String;

.field line:I

.field location:Lgnu/mapping/Location;

.field public symbol:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 36
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 37
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result p1

    iput p1, p0, Lgnu/mapping/UnboundLocationException;->line:I

    .line 38
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result p1

    iput p1, p0, Lgnu/mapping/UnboundLocationException;->column:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 27
    iput p3, p0, Lgnu/mapping/UnboundLocationException;->line:I

    .line 28
    iput p4, p0, Lgnu/mapping/UnboundLocationException;->column:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 62
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    iget-object v1, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    if-nez v1, :cond_1

    iget v2, p0, Lgnu/mapping/UnboundLocationException;->line:I

    if-lez v2, :cond_4

    :cond_1
    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_2
    iget v1, p0, Lgnu/mapping/UnboundLocationException;->line:I

    if-ltz v1, :cond_3

    const/16 v1, 0x3a

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    iget v2, p0, Lgnu/mapping/UnboundLocationException;->line:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    iget v2, p0, Lgnu/mapping/UnboundLocationException;->column:I

    if-lez v2, :cond_3

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    iget v1, p0, Lgnu/mapping/UnboundLocationException;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, ": "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_4
    iget-object v1, p0, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    :goto_0
    const-string v2, "unbound location "

    if-eqz v1, :cond_6

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v1, p0, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    invoke-virtual {v1}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, " (property "

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 95
    :cond_6
    iget-object v1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    const-string v1, "unbound location"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLine(Ljava/lang/String;II)V
    .locals 0

    .line 55
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 56
    iput p2, p0, Lgnu/mapping/UnboundLocationException;->line:I

    .line 57
    iput p3, p0, Lgnu/mapping/UnboundLocationException;->column:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
