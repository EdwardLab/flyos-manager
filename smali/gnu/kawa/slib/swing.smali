.class public Lgnu/kawa/slib/swing;
.super Lgnu/expr/ModuleBody;
.source "swing.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nswing.scm\nScheme\n*S Scheme\n*F\n+ 1 swing.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm\n*L\n1#1,183:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/swing;

.field public static final Button:Lgnu/mapping/Location;

.field public static final Column:Lgnu/mapping/Location;

.field public static final Image:Lgnu/mapping/Location;

.field public static final Label:Lgnu/mapping/Location;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/expr/Keyword;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/expr/Keyword;

.field static final Lit4:Lgnu/expr/Keyword;

.field static final Lit5:Lgnu/expr/Keyword;

.field static final Lit6:Lgnu/expr/Keyword;

.field static final Lit7:Lgnu/expr/Keyword;

.field static final Lit8:Lgnu/expr/Keyword;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/mapping/Location;

.field public static final Text:Lgnu/mapping/Location;

.field public static final Window:Lgnu/mapping/Location;

.field public static final button:Lgnu/mapping/Location;

.field public static final color$Mnred:Ljava/awt/Color;

.field public static final composite$Mnsrc:Lgnu/expr/ModuleMethod;

.field public static final composite$Mnsrc$Mnover:Lgnu/expr/ModuleMethod;

.field public static final draw:Lgnu/expr/ModuleMethod;

.field public static final fill:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/mapping/Location;

.field public static final image$Mnread:Lgnu/mapping/Location;

.field public static final image$Mnwidth:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

.field static final loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

.field public static final make$Mnaction$Mnlistener:Lgnu/expr/ModuleMethod;

.field public static final menu:Lgnu/expr/ModuleMethod;

.field public static final menubar:Lgnu/expr/ModuleMethod;

.field public static final menuitem:Lgnu/expr/ModuleMethod;

.field public static final polygon:Lgnu/expr/ModuleMethod;

.field public static final rotation:Lgnu/expr/ModuleMethod;

.field public static final run$Mnapplication:Lgnu/mapping/Location;

.field public static final scroll:Lgnu/expr/ModuleMethod;

.field public static final set$Mncontent:Lgnu/mapping/Location;

.field public static final with$Mncomposite:Lgnu/expr/ModuleMethod;

.field public static final with$Mnpaint:Lgnu/expr/ModuleMethod;

.field public static final with$Mntransform:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scroll"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "polygon"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "menuitem"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/swing;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "menu"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/swing;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "menubar"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/swing;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "with-transform"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/swing;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "rotation"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/swing;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "composite-src"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/swing;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "composite-src-over"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/swing;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "with-composite"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/swing;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "with-paint"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/swing;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "draw"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/kawa/slib/swing;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "fill"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/swing;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "make-action-listener"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/swing;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "gnu.kawa.models.WithComposite"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/swing;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "<gnu.kawa.models.WithPaint>"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/swing;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "<gnu.kawa.models.DrawShape>"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/swing;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "<gnu.kawa.models.FillShape>"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/swing;->Lit9:Lgnu/mapping/SimpleSymbol;

    const-string v15, "h"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit8:Lgnu/expr/Keyword;

    const-string v15, "w"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit7:Lgnu/expr/Keyword;

    const-string v15, "accesskey"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit6:Lgnu/expr/Keyword;

    const-string v15, "disabled"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit5:Lgnu/expr/Keyword;

    const-string v15, "oncommand"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit4:Lgnu/expr/Keyword;

    const-string v15, "default"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit3:Lgnu/expr/Keyword;

    const-string v15, "image"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit2:Lgnu/expr/Keyword;

    const-string v15, "label"

    invoke-static {v15}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "make"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/swing;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/kawa/slib/swing;

    invoke-direct {v3}, Lgnu/kawa/slib/swing;-><init>()V

    sput-object v3, Lgnu/kawa/slib/swing;->$instance:Lgnu/kawa/slib/swing;

    const/4 v15, 0x0

    invoke-static {v2, v15}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

    invoke-static {v1, v15}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

    invoke-static {v0, v15}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

    invoke-static {v14, v15}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

    const-string v0, "gnu.kawa.slib.gui"

    const-string v1, "button"

    .line 11
    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->button:Lgnu/mapping/Location;

    const-string v1, "Button"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Button:Lgnu/mapping/Location;

    const-string v1, "Image"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Image:Lgnu/mapping/Location;

    const-string v1, "image$Mnread"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->image$Mnread:Lgnu/mapping/Location;

    const-string v1, "image$Mnwidth"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->image$Mnwidth:Lgnu/mapping/Location;

    const-string v1, "image$Mnheight"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->image$Mnheight:Lgnu/mapping/Location;

    const-string v1, "Label"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Label:Lgnu/mapping/Location;

    const-string v1, "Text"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Text:Lgnu/mapping/Location;

    const-string v1, "Row"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Row:Lgnu/mapping/Location;

    const-string v1, "Column"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Column:Lgnu/mapping/Location;

    const-string v1, "set$Mncontent"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->set$Mncontent:Lgnu/mapping/Location;

    const-string v1, "Window"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/swing;->Window:Lgnu/mapping/Location;

    const-string v1, "run$Mnapplication"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/swing;->run$Mnapplication:Lgnu/mapping/Location;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/16 v2, 0x1001

    invoke-direct {v0, v3, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->make$Mnaction$Mnlistener:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    invoke-direct {v0, v3, v1, v12, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->fill:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x3

    invoke-direct {v0, v3, v1, v11, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->draw:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    const/16 v11, 0x2002

    invoke-direct {v0, v3, v1, v10, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->with$Mnpaint:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    const/16 v10, -0x1000

    invoke-direct {v0, v3, v1, v9, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->with$Mncomposite:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    const/16 v9, 0x1000

    invoke-direct {v0, v3, v1, v8, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->composite$Mnsrc$Mnover:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    invoke-direct {v0, v3, v1, v7, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->composite$Mnsrc:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    invoke-direct {v0, v3, v1, v6, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->rotation:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    invoke-direct {v0, v3, v1, v5, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->with$Mntransform:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    invoke-direct {v0, v3, v1, v4, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->menubar:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->menu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    move-object/from16 v2, v18

    invoke-direct {v0, v3, v1, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->menuitem:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    const/16 v2, -0xfff

    move-object/from16 v4, v17

    invoke-direct {v0, v3, v1, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->polygon:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    move-object/from16 v4, v16

    invoke-direct {v0, v3, v1, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/swing;->scroll:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static compositeSrc()Ljava/awt/Composite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/slib/swing;->compositeSrc(F)Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrc(F)Ljava/awt/Composite;
    .locals 1

    .line 39
    sget v0, Ljava/awt/AlphaComposite;->SRC:I

    invoke-static {v0, p0}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0
.end method

.method public static compositeSrcOver()Ljava/awt/Composite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lgnu/kawa/slib/swing;->compositeSrcOver(F)Ljava/awt/Composite;

    move-result-object v0

    return-object v0
.end method

.method public static compositeSrcOver(F)Ljava/awt/Composite;
    .locals 1

    .line 33
    sget v0, Ljava/awt/AlphaComposite;->SRC_OVER:I

    invoke-static {v0, p0}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0
.end method

.method public static draw(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;
    .locals 3

    .line 22
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtDrawShape$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/kawa/models/Paintable;

    return-object p0

    :catch_0
    move-exception p0

    const/16 v0, 0x16

    const/16 v1, 0x9

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method public static fill(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;
    .locals 3

    .line 19
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtFillShape$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/kawa/models/Paintable;

    return-object p0

    :catch_0
    move-exception p0

    const/16 v0, 0x13

    const/16 v1, 0x9

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method public static makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;
    .locals 0

    .line 15
    invoke-static {p0}, Lgnu/kawa/swingviews/SwingDisplay;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object p0

    return-object p0
.end method

.method public static varargs menu([Ljava/lang/Object;)Ljavax/swing/JMenu;
    .locals 6

    .line 129
    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    .line 130
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 133
    aget-object v4, p0, v3

    .line 134
    sget-object v5, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    if-ne v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_3

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_3

    :goto_2
    add-int/lit8 v4, v3, 0x1

    .line 135
    aget-object v4, p0, v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v0, v4}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 140
    :cond_3
    check-cast v4, Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static varargs menubar([Ljava/lang/Object;)Ljavax/swing/JMenuBar;
    .locals 4

    .line 116
    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    .line 117
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 120
    aget-object v3, p0, v2

    .line 122
    check-cast v3, Ljavax/swing/JMenu;

    invoke-virtual {v0, v3}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static menuitem$V([Ljava/lang/Object;)Ljavax/swing/JMenuItem;
    .locals 6

    .line 144
    sget-object v0, Lgnu/kawa/slib/swing;->Lit1:Lgnu/expr/Keyword;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v3, Lgnu/kawa/slib/swing;->Lit2:Lgnu/expr/Keyword;

    invoke-static {p0, v1, v3, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/swing;->Lit3:Lgnu/expr/Keyword;

    invoke-static {p0, v1, v3, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/swing;->Lit4:Lgnu/expr/Keyword;

    invoke-static {p0, v1, v3, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/kawa/slib/swing;->Lit5:Lgnu/expr/Keyword;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1, v4, v5}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/swing;->Lit6:Lgnu/expr/Keyword;

    invoke-static {p0, v1, v5, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance p0, Ljavax/swing/JMenuItem;

    invoke-direct {p0}, Ljavax/swing/JMenuItem;-><init>()V

    .line 154
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v2, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0, v0}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 159
    invoke-static {v3}, Lgnu/kawa/slib/swing;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    :cond_3
    return-object p0
.end method

.method public static varargs polygon(Lgnu/math/Complex;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 164
    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    .line 166
    array-length v1, p1

    .line 167
    invoke-static {p0}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v2

    invoke-static {p0}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/awt/geom/GeneralPath;->moveTo(DD)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    .line 173
    aget-object v2, p1, p0

    :try_start_0
    check-cast v2, Lgnu/math/Complex;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-static {v2}, Lkawa/lib/numbers;->realPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v3

    invoke-virtual {v3}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v3

    invoke-static {v2}, Lkawa/lib/numbers;->imagPart(Lgnu/math/Complex;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/awt/geom/GeneralPath;->lineTo(DD)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v0, -0x2

    const-string v1, "pt"

    invoke-direct {p1, p0, v1, v0, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/awt/geom/GeneralPath;->closePath()V

    return-object v0
.end method

.method public static rotation(D)Ljava/awt/geom/AffineTransform;
    .locals 0

    .line 44
    invoke-static {p0, p1}, Ljava/awt/geom/AffineTransform;->getRotateInstance(D)Ljava/awt/geom/AffineTransform;

    move-result-object p0

    return-object p0
.end method

.method public static scroll$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljavax/swing/JScrollPane;
    .locals 5

    const-string v0, "java.awt.Dimension.<init>(int,int)"

    .line 177
    sget-object v1, Lgnu/kawa/slib/swing;->Lit7:Lgnu/expr/Keyword;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/kawa/slib/swing;->Lit8:Lgnu/expr/Keyword;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v3, v2, v4}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 178
    instance-of v2, p0, Lgnu/kawa/models/Paintable;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 179
    new-instance v2, Lgnu/kawa/swingviews/SwingPaintable;

    :try_start_0
    check-cast p0, Lgnu/kawa/models/Paintable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v2, p0}, Lgnu/kawa/swingviews/SwingPaintable;-><init>(Lgnu/kawa/models/Paintable;)V

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "gnu.kawa.swingviews.SwingPaintable.<init>(gnu.kawa.models.Paintable)"

    invoke-direct {v0, p1, v1, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 181
    :cond_0
    :goto_0
    new-instance v2, Ljavax/swing/JScrollPane;

    :try_start_1
    check-cast p0, Ljava/awt/Component;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    invoke-direct {v2, p0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 182
    new-instance p0, Ljava/awt/Dimension;

    :try_start_2
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object v3, p1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-direct {p0, v1, p1}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v2, p0}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    return-object v2

    :catch_1
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_2
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v0, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_3
    move-exception p1

    .line 181
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "javax.swing.JScrollPane.<init>(java.awt.Component)"

    invoke-direct {v0, p1, v1, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public static varargs withComposite([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 29
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    sget-object v2, Lgnu/kawa/slib/swing;->loc$gnu$Dtkawa$Dtmodels$DtWithComposite:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lgnu/kawa/slib/swing;->Lit0:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/16 v0, 0x1d

    const/4 v1, 0x4

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method public static withPaint(Ljava/awt/Color;Lgnu/kawa/models/Paintable;)Ljava/lang/Object;
    .locals 2

    .line 26
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/swing;->loc$$Lsgnu$Dtkawa$Dtmodels$DtWithPaint$Gr:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1, p1, p0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/16 p1, 0x1a

    const/16 v0, 0xa

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/swing.scm"

    invoke-virtual {p0, v1, p1, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method public static withTransform(Ljava/awt/geom/AffineTransform;Lgnu/kawa/models/Paintable;)Lgnu/kawa/models/WithTransform;
    .locals 1

    .line 48
    new-instance v0, Lgnu/kawa/models/WithTransform;

    invoke-direct {v0, p1, p0}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 37
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lgnu/kawa/slib/swing;->compositeSrc()Ljava/awt/Composite;

    move-result-object p1

    return-object p1

    .line 31
    :cond_1
    invoke-static {}, Lgnu/kawa/slib/swing;->compositeSrcOver()Ljava/awt/Composite;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    .line 43
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p2}, Lgnu/kawa/slib/swing;->rotation(D)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "rotation"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 37
    :cond_1
    :try_start_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p1}, Lgnu/kawa/slib/swing;->compositeSrc(F)Ljava/awt/Composite;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "composite-src"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 31
    :cond_2
    :try_start_2
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p1}, Lgnu/kawa/slib/swing;->compositeSrcOver(F)Ljava/awt/Composite;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "composite-src-over"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :cond_3
    :try_start_3
    check-cast p2, Ljava/awt/Shape;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lgnu/kawa/slib/swing;->draw(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "draw"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :cond_4
    :try_start_4
    check-cast p2, Ljava/awt/Shape;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lgnu/kawa/slib/swing;->fill(Ljava/awt/Shape;)Lgnu/kawa/models/Paintable;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "fill"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :cond_5
    invoke-static {p2}, Lgnu/kawa/slib/swing;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "with-transform"

    const-string v1, "with-paint"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/16 v1, 0xb

    if-eq v2, v1, :cond_0

    .line 46
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    check-cast p2, Ljava/awt/geom/AffineTransform;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/kawa/models/Paintable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/swing;->withTransform(Ljava/awt/geom/AffineTransform;Lgnu/kawa/models/Paintable;)Lgnu/kawa/models/WithTransform;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    .line 46
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 24
    :cond_1
    :try_start_2
    check-cast p2, Ljava/awt/Color;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    check-cast p3, Lgnu/kawa/models/Paintable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p2, p3}, Lgnu/kawa/slib/swing;->withPaint(Ljava/awt/Color;Lgnu/kawa/models/Paintable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    .line 25
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    .line 24
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    aget-object p1, p2, v1

    array-length v0, p2

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    invoke-static {p1, v3}, Lgnu/kawa/slib/swing;->scroll$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljavax/swing/JScrollPane;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    aput-object v1, v3, v0

    goto :goto_0

    .line 162
    :pswitch_1
    aget-object p1, p2, v1

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/math/Complex;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, p2

    sub-int/2addr p1, v2

    new-array v1, p1, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    invoke-static {v0, v1}, Lgnu/kawa/slib/swing;->polygon(Lgnu/math/Complex;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_1

    :catch_0
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "polygon"

    invoke-direct {v0, p2, v1, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 144
    :pswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/swing;->menuitem$V([Ljava/lang/Object;)Ljavax/swing/JMenuItem;

    move-result-object p1

    return-object p1

    .line 126
    :pswitch_3
    invoke-static {p2}, Lgnu/kawa/slib/swing;->menu([Ljava/lang/Object;)Ljavax/swing/JMenu;

    move-result-object p1

    return-object p1

    .line 113
    :pswitch_4
    invoke-static {p2}, Lgnu/kawa/slib/swing;->menubar([Ljava/lang/Object;)Ljavax/swing/JMenuBar;

    move-result-object p1

    return-object p1

    .line 28
    :cond_2
    invoke-static {p2}, Lgnu/kawa/slib/swing;->withComposite([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 31
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 37
    :cond_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 31
    :cond_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    const v4, -0xbffff

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    .line 13
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 43
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 37
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 31
    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 21
    :cond_3
    instance-of v0, p2, Ljava/awt/Shape;

    if-nez v0, :cond_4

    return v4

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 18
    :cond_5
    instance-of v0, p2, Ljava/awt/Shape;

    if-nez v0, :cond_6

    return v4

    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 13
    :cond_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x4

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    const v5, -0xbffff

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 46
    :cond_0
    instance-of v0, p2, Ljava/awt/geom/AffineTransform;

    if-nez v0, :cond_1

    return v5

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/models/Paintable;

    if-nez p2, :cond_2

    return v2

    :cond_2
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 24
    :cond_3
    instance-of v0, p2, Ljava/awt/Color;

    if-nez v0, :cond_4

    return v5

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/kawa/models/Paintable;

    if-nez p2, :cond_5

    return v2

    :cond_5
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 177
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 162
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 144
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 126
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 113
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 28
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 50
    sget-object p1, Ljava/awt/Color;->red:Ljava/awt/Color;

    sput-object p1, Lgnu/kawa/slib/swing;->color$Mnred:Ljava/awt/Color;

    return-void
.end method
