.class Lgnu/expr/SimplePrompter;
.super Lgnu/mapping/Procedure1;
.source "Language.java"


# instance fields
.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 963
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    const-string v0, "["

    .line 965
    iput-object v0, p0, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    const-string v0, "] "

    .line 966
    iput-object v0, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 970
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_0

    .line 972
    check-cast p1, Lgnu/mapping/InPort;

    .line 973
    invoke-virtual {p1}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-ltz p1, :cond_0

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 977
    :cond_0
    iget-object p1, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    return-object p1
.end method
