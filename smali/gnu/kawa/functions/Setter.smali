.class public Lgnu/kawa/functions/Setter;
.super Lgnu/mapping/Procedure1;
.source "Setter.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# static fields
.field public static final setter:Lgnu/kawa/functions/Setter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lgnu/kawa/functions/Setter;

    invoke-direct {v0}, Lgnu/kawa/functions/Setter;-><init>()V

    sput-object v0, Lgnu/kawa/functions/Setter;->setter:Lgnu/kawa/functions/Setter;

    const-string v1, "setter"

    .line 14
    invoke-virtual {v0, v1}, Lgnu/kawa/functions/Setter;->setName(Ljava/lang/String;)V

    .line 15
    sget-object v1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v2, "gnu.kawa.functions.CompilationHelpers:validateSetter"

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Setter;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static setter(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 26
    instance-of v0, p1, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    .line 29
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lgnu/kawa/functions/SetList;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Lgnu/kawa/functions/SetList;-><init>(Ljava/util/List;)V

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lgnu/kawa/functions/SetArray;

    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lgnu/kawa/functions/SetArray;-><init>(Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object v0

    .line 39
    :cond_1
    check-cast p1, Lgnu/mapping/Procedure;

    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    check-cast p1, Lgnu/mapping/Procedure;

    check-cast p2, Lgnu/mapping/Procedure;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->setSetter(Lgnu/mapping/Procedure;)V

    return-void
.end method
