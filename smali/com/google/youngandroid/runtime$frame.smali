.class public Lcom/google/youngandroid/runtime$frame;
.super Lgnu/expr/ModuleBody;
.source "runtime3380428371229514992.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->addComponentWithinRepl(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime3380428371229514992.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime3380428371229514992.scm\n/tmp/runtime3380428371229514992.scm\n*L\n99#1,5:99\n*E\n"
.end annotation


# instance fields
.field component$Mnname:Ljava/lang/Object;

.field component$Mnto$Mnadd:Ljava/lang/Object;

.field existing$Mncomponent:Ljava/lang/Object;

.field init$Mnprops$Mnthunk:Ljava/lang/Object;

.field final lambda$Fn1:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime3380428371229514992.scm:99"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/youngandroid/runtime$frame;->lambda1()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda1()Ljava/lang/Object;
    .locals 6

    const-string v0, "com.google.appinventor.components.runtime.util.PropertyUtil.copyComponentProperties(com.google.appinventor.components.runtime.Component,com.google.appinventor.components.runtime.Component)"

    .line 100
    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame;->init$Mnprops$Mnthunk:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lcom/google/youngandroid/runtime$frame;->init$Mnprops$Mnthunk:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame;->existing$Mncomponent:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Copying component properties for ~A"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 102
    iget-object v3, p0, Lcom/google/youngandroid/runtime$frame;->component$Mnname:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v4, v2}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/youngandroid/runtime;->androidLog(Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/google/youngandroid/runtime$frame;->existing$Mncomponent:Ljava/lang/Object;

    :try_start_0
    check-cast v2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lcom/google/youngandroid/runtime$frame;->component$Mnto$Mnadd:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Lcom/google/appinventor/components/runtime/Component;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/PropertyUtil;->copyComponentProperties(Lcom/google/appinventor/components/runtime/Component;Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/Component;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Lgnu/mapping/WrongType;

    invoke-direct {v4, v2, v0, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v4

    :catch_1
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v1, v0, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :cond_1
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 99
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
