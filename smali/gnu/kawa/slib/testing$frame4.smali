.class public Lgnu/kawa/slib/testing$frame4;
.super Lgnu/expr/ModuleBody;
.source "testing.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/testing;->$PcTestMatchAny$V([Ljava/lang/Object;)Lgnu/mapping/Procedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame4"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ntesting.scm\nScheme\n*S Scheme\n*F\n+ 1 testing.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm\n*L\n931#1,9:931\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field pred$Mnlist:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/testing.scm:931"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/testing$frame4;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 931
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/testing$frame4;->lambda14(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda14(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 932
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 933
    iget-object v1, p0, Lgnu/kawa/slib/testing$frame4;->pred$Mnlist:Lgnu/lists/LList;

    .line 934
    :goto_0
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 936
    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 937
    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    .line 938
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 939
    :cond_1
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 931
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
