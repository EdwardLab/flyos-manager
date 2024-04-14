.class public Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;
.super Lgnu/expr/ModuleBody;
.source "start_flyos.yail"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstart_flyos.yail\nScheme\n*S Scheme\n*F\n+ 1 start_flyos.yail\n/tmp/1713028266243_0.07407756255249276-0/youngandroidproject/../src/io/kodular/xingyujie50/FlyOS_3/start_flyos.yail\n+ 2 runtime3380428371229514992.scm\n/tmp/runtime3380428371229514992.scm\n*L\n309#2,312:309\n*E\n"
.end annotation


# instance fields
.field $main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 528
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->Button1$Click()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda13()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda12()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda11()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda10()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda9()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda8()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda7()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda6()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda5()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda4()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->start_flyos$Initialize()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_c
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda3()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_d
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->$define()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 620
    :pswitch_e
    invoke-static {}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lambda2()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 396
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->processException(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 393
    :pswitch_1
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->sendError(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 388
    :pswitch_2
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 333
    :cond_0
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 327
    :cond_2
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 314
    :cond_3
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->androidLogForm(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 309
    :cond_4
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 520
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2, p3}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 378
    :cond_1
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2, p3}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 362
    :cond_2
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2, p3}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 341
    :cond_3
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2, p3}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "add-to-global-var-environment"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 327
    :cond_4
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p1, p2, p3}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "lookup-in-form-environment"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 323
    :cond_5
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1, p2, p3}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "add-to-form-environment"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "dispatchGenericEvent"

    const-string v1, "dispatchEvent"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    const/16 v3, 0xe

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v3, :cond_2

    const/16 v1, 0xf

    if-eq v2, v1, :cond_0

    .line 476
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_0
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    if-eq p4, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    :try_start_3
    check-cast p5, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {p1, p2, p3, v7, p5}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    .line 479
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 478
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    .line 477
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    .line 476
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 415
    :cond_2
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    :try_start_4
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_7

    :try_start_5
    check-cast p3, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    check-cast p4, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    check-cast p5, [Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_4

    invoke-virtual {p1, p2, p3, p4, p5}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :catch_4
    move-exception p1

    .line 418
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    .line 417
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_6
    move-exception p1

    .line 416
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p1

    .line 415
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 369
    :cond_4
    iget-object p1, p0, Lio/kodular/xingyujie50/FlyOS_3/start_flyos$frame;->$main:Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    invoke-virtual {p1, p2, p3, p4, p5}, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 620
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 0
    :pswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_7
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_8
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_9
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 528
    :pswitch_d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 620
    :pswitch_e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x4

    const v4, -0xbffff

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 309
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 396
    :pswitch_0
    instance-of v0, p2, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    if-nez v0, :cond_0

    return v4

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 393
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 388
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 333
    :cond_1
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    return v4

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 327
    :cond_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4

    return v4

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 314
    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 309
    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x3

    const v2, -0xbffff

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 520
    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 378
    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 362
    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 341
    :cond_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4

    return v2

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 327
    :cond_5
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_6

    return v2

    :cond_6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 323
    :cond_7
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_8

    return v2

    :cond_8
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v1, :cond_9

    const/16 v1, 0xe

    const v4, -0xbfffd

    const v5, -0xbfffe

    const v6, -0xbffff

    if-eq v0, v1, :cond_4

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    .line 369
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 476
    :cond_0
    instance-of v0, p2, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    if-nez v0, :cond_1

    return v6

    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez p2, :cond_2

    return v5

    :cond_2
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_3

    return v4

    :cond_3
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 415
    :cond_4
    instance-of v0, p2, Lio/kodular/xingyujie50/FlyOS_3/start_flyos;

    if-nez v0, :cond_5

    return v6

    :cond_5
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez p2, :cond_6

    return v5

    :cond_6
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_7

    return v4

    :cond_7
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Ljava/lang/String;

    if-nez p2, :cond_8

    const p1, -0xbfffc

    return p1

    :cond_8
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 369
    :cond_9
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method
