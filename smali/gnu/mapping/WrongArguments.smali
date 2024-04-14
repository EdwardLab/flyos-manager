.class public Lgnu/mapping/WrongArguments;
.super Ljava/lang/IllegalArgumentException;
.source "WrongArguments.java"


# instance fields
.field public number:I

.field proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 84
    iput-object p1, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    .line 85
    iput p2, p0, Lgnu/mapping/WrongArguments;->number:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 89
    iput-object p1, p0, Lgnu/mapping/WrongArguments;->procname:Ljava/lang/String;

    .line 90
    iput p2, p0, Lgnu/mapping/WrongArguments;->number:I

    .line 91
    iput-object p3, p0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    return-void
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;
    .locals 3

    .line 21
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    and-int/lit16 v1, v0, 0xfff

    shr-int/lit8 v0, v0, 0xc

    .line 24
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 27
    :cond_0
    invoke-static {v2, v1, v0, p1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkArgCount(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3

    if-ge p3, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_5

    if-le p3, p2, :cond_5

    const/4 v0, 0x1

    .line 39
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "call to "

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p0, :cond_1

    const-string p0, "unnamed procedure"

    .line 42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v2, 0x27

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz v0, :cond_2

    const-string p0, " has too many"

    goto :goto_2

    :cond_2
    const-string p0, " has too few"

    .line 49
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " arguments ("

    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-ne p1, p2, :cond_3

    const-string p0, "; must be "

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const-string p0, "; min="

    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    if-ltz p2, :cond_4

    const-string p0, ", max="

    .line 63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_4
    :goto_3
    const/16 p0, 0x29

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 73
    iget-object v0, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    if-eqz v0, :cond_0

    .line 75
    iget v1, p0, Lgnu/mapping/WrongArguments;->number:I

    invoke-static {v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 79
    :cond_0
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
