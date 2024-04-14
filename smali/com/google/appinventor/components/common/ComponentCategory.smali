.class public final enum Lcom/google/appinventor/components/common/ComponentCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ComponentCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field private static final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EV3:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum NXT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ComponentCategory;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Boolean;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/ComponentCategory;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Boolean;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "USERINTERFACE"

    const/4 v2, 0x0

    const-string v3, "User Interface"

    const-string v4, "devices_other"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 21
    new-instance v1, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "LAYOUT"

    const/4 v7, 0x1

    const-string v8, "Layout"

    const-string v10, "table_chart"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 22
    new-instance v4, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "LAYOUT_GENERAL"

    const/4 v7, 0x2

    const-string v8, "General"

    const-string v12, "dashboard"

    move-object v5, v4

    move-object v10, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 23
    new-instance v13, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "LISTVIEWS"

    const/4 v7, 0x3

    const-string v8, "Listviews"

    const-string v12, "dns"

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v13, Lcom/google/appinventor/components/common/ComponentCategory;->LISTVIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 24
    new-instance v14, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "NAVIGATION"

    const/4 v7, 0x4

    const-string v8, "Navigation"

    const-string v12, "control_camera"

    move-object v5, v14

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v14, Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 25
    new-instance v15, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "VIEWS"

    const/4 v7, 0x5

    const-string v8, "Views"

    const-string v12, "view_array"

    move-object v5, v15

    invoke-direct/range {v5 .. v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v15, Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 26
    new-instance v5, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v6, "MEDIA"

    const/4 v7, 0x6

    const-string v8, "Media"

    const-string v9, "camera"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 27
    new-instance v6, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v9, "ANIMATION"

    const/4 v10, 0x7

    const-string v11, "Drawing and Animation"

    const-string v12, "color_lens"

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 28
    new-instance v9, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "MAPS"

    const/16 v10, 0x8

    const-string v7, "Maps"

    const-string v2, "map"

    invoke-direct {v9, v12, v10, v7, v2}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 29
    new-instance v2, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "SENSORS"

    const/16 v10, 0x9

    move-object/from16 v16, v7

    const-string v7, "Sensors"

    move-object/from16 v17, v11

    const-string v11, "explore"

    invoke-direct {v2, v12, v10, v7, v11}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 30
    new-instance v11, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "SOCIAL"

    const/16 v10, 0xa

    move-object/from16 v18, v7

    const-string v7, "Social"

    move-object/from16 v19, v8

    const-string v8, "supervised_user_circle"

    invoke-direct {v11, v12, v10, v7, v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 31
    new-instance v8, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "STORAGE"

    const/16 v10, 0xb

    move-object/from16 v20, v7

    const-string v7, "Storage"

    move-object/from16 v21, v3

    const-string v3, "file_copy"

    invoke-direct {v8, v12, v10, v7, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 32
    new-instance v3, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "UTILITIES"

    const/16 v10, 0xc

    move-object/from16 v22, v7

    const-string v7, "Utilities"

    move-object/from16 v23, v8

    const-string v8, "work_outline"

    invoke-direct {v3, v12, v10, v7, v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 33
    new-instance v8, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "DYNAMIC"

    const/16 v10, 0xd

    move-object/from16 v24, v7

    const-string v7, "Dynamic"

    move-object/from16 v25, v3

    const-string v3, "code"

    invoke-direct {v8, v12, v10, v7, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/ComponentCategory;->DYNAMIC:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 34
    new-instance v3, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "CONNECTIVITY"

    const/16 v10, 0xe

    move-object/from16 v26, v7

    const-string v7, "Connectivity"

    move-object/from16 v27, v8

    const-string v8, "rss_feed"

    invoke-direct {v3, v12, v10, v7, v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 35
    new-instance v8, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v12, "GOOGLE"

    const/16 v10, 0xf

    move-object/from16 v28, v7

    const-string v7, "Google"

    move-object/from16 v29, v3

    const-string v3, "mdi-google"

    invoke-direct {v8, v12, v10, v7, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 36
    new-instance v3, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v34, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v31, "MONETIZATION"

    const/16 v32, 0x10

    const-string v33, "Monetization"

    const-string v35, "monetization_on"

    move-object/from16 v30, v3

    invoke-direct/range {v30 .. v35}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 37
    new-instance v12, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v34, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v36, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v31, "MONETIZATION_GENERAL"

    const/16 v32, 0x11

    const-string v33, "General"

    const-string v37, "shopping_cart"

    move-object/from16 v30, v12

    move-object/from16 v35, v3

    invoke-direct/range {v30 .. v37}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v12, Lcom/google/appinventor/components/common/ComponentCategory;->MONETIZATION_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 38
    new-instance v38, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v34, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v36, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v31, "ADVERTISING"

    const/16 v32, 0x12

    const-string v33, "Advertising"

    const-string v37, "branding_watermark"

    move-object/from16 v30, v38

    invoke-direct/range {v30 .. v37}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v38, Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 39
    new-instance v30, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v43, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v40, "LEGOMINDSTORMS"

    const/16 v41, 0x13

    const-string v42, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string v44, "widgets"

    move-object/from16 v39, v30

    invoke-direct/range {v39 .. v44}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v30, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 40
    new-instance v31, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v43, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v45, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v40, "EV3"

    const/16 v41, 0x14

    const-string v42, "LEGO\u00ae EV3"

    const-string v46, "gamepad"

    move-object/from16 v39, v31

    move-object/from16 v44, v30

    invoke-direct/range {v39 .. v46}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v31, Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 41
    new-instance v32, Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v43, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v45, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v40, "NXT"

    const/16 v41, 0x15

    const-string v42, "LEGO\u00ae NXT"

    const-string v46, "gamepad"

    move-object/from16 v39, v32

    invoke-direct/range {v39 .. v46}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    sput-object v32, Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 42
    new-instance v10, Lcom/google/appinventor/components/common/ComponentCategory;

    move-object/from16 v34, v7

    const-string v7, "EXPERIMENTAL"

    move-object/from16 v35, v12

    const/16 v12, 0x16

    move-object/from16 v36, v3

    const-string v3, "Experimental"

    move-object/from16 v37, v8

    const-string v8, "new_releases"

    invoke-direct {v10, v7, v12, v3, v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 43
    new-instance v3, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v7, "DEPRECATED"

    const/16 v8, 0x17

    const-string v12, "Deprecated"

    move-object/from16 v39, v10

    const-string v10, "format_line_spacing"

    invoke-direct {v3, v7, v8, v12, v10}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 44
    new-instance v7, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v8, "EXTENSION"

    const/16 v10, 0x18

    const-string v12, "Extension"

    move-object/from16 v40, v3

    const-string v3, "extension"

    invoke-direct {v7, v8, v10, v12, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 45
    new-instance v3, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v8, "INTERNAL"

    const/16 v10, 0x19

    const-string v12, "For internal use only"

    invoke-direct {v3, v8, v10, v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 46
    new-instance v8, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v10, "UNINITIALIZED"

    const/16 v12, 0x1a

    move-object/from16 v41, v3

    const-string v3, "Uninitialized"

    invoke-direct {v8, v10, v12, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v3, 0x1b

    new-array v3, v3, [Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v13, v3, v0

    const/4 v0, 0x4

    aput-object v14, v3, v0

    const/4 v0, 0x5

    aput-object v15, v3, v0

    const/4 v0, 0x6

    aput-object v5, v3, v0

    const/4 v0, 0x7

    aput-object v6, v3, v0

    const/16 v0, 0x8

    aput-object v9, v3, v0

    const/16 v0, 0x9

    aput-object v2, v3, v0

    const/16 v0, 0xa

    aput-object v11, v3, v0

    const/16 v0, 0xb

    aput-object v23, v3, v0

    const/16 v0, 0xc

    aput-object v25, v3, v0

    const/16 v0, 0xd

    aput-object v27, v3, v0

    const/16 v0, 0xe

    aput-object v29, v3, v0

    const/16 v0, 0xf

    aput-object v37, v3, v0

    const/16 v0, 0x10

    aput-object v36, v3, v0

    const/16 v0, 0x11

    aput-object v35, v3, v0

    const/16 v0, 0x12

    aput-object v38, v3, v0

    const/16 v0, 0x13

    aput-object v30, v3, v0

    const/16 v0, 0x14

    aput-object v31, v3, v0

    const/16 v0, 0x15

    aput-object v32, v3, v0

    const/16 v0, 0x16

    aput-object v39, v3, v0

    const/16 v0, 0x17

    aput-object v40, v3, v0

    const/16 v0, 0x18

    aput-object v7, v3, v0

    const/16 v0, 0x19

    aput-object v41, v3, v0

    const/16 v0, 0x1a

    aput-object v8, v3, v0

    .line 17
    sput-object v3, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ComponentCategory;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Map;

    const-string v1, "user-interface"

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Layout"

    const-string v2, "layout"

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LayoutGeneral"

    const-string v2, "layout/general"

    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Listviews"

    const-string v2, "layout/listviews"

    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Views"

    const-string v2, "layout/views"

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Navigation"

    const-string v2, "layout/navigation"

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "media"

    move-object/from16 v2, v19

    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "drawing-and-animation"

    move-object/from16 v2, v17

    .line 59
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "maps"

    move-object/from16 v2, v16

    .line 60
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sensors"

    move-object/from16 v2, v18

    .line 61
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "social"

    move-object/from16 v2, v20

    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "storage"

    move-object/from16 v2, v22

    .line 63
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Device"

    const-string v2, "device"

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dynamic"

    move-object/from16 v2, v26

    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "connectivity"

    move-object/from16 v2, v28

    .line 66
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "google"

    move-object/from16 v2, v34

    .line 67
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string v2, "lego-mindstorms"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LEGO\u00ae EV3"

    const-string v2, "lego-mindstorms/ev3"

    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "LEGO\u00ae NXT"

    const-string v2, "lego-mindstorms/nxt"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Monetization"

    const-string v2, "monetization"

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MonetizationGeneral"

    const-string v2, "monetization/general"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Advertising"

    const-string v2, "monetization/advertising"

    .line 73
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utilities"

    move-object/from16 v2, v24

    .line 74
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Experimental"

    const-string v2, "experimental"

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Deprecated"

    const-string v2, "deprecated"

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Extension"

    const-string v2, "extension"

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 99
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    const-string v7, "offline_bolt"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/appinventor/components/common/ComponentCategory;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p3, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Boolean;

    .line 89
    iput-object p5, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 90
    iput-object p6, p0, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Boolean;

    .line 91
    iput-object p7, p0, Lcom/google/appinventor/components/common/ComponentCategory;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 103
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Boolean;Lcom/google/appinventor/components/common/ComponentCategory;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .line 17
    const-class v0, Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/ComponentCategory;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ComponentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method


# virtual methods
.method public final getChildren()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/common/ComponentCategory;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ComponentCategory;->hasChildCategories()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/common/ComponentCategory;->values()[Lcom/google/appinventor/components/common/ComponentCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 158
    invoke-virtual {v4}, Lcom/google/appinventor/components/common/ComponentCategory;->getParentCategory()Lcom/google/appinventor/components/common/ComponentCategory;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 159
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getDocName()Ljava/lang/String;
    .locals 2

    .line 175
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ComponentCategory;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAYOUT_GENERAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Map;

    const-string v1, "LayoutGeneral"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ComponentCategory;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MONETIZATION_GENERAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Map;

    const-string v1, "MonetizationGeneral"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 179
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentCategory()Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method

.method public final hasChildCategories()Ljava/lang/Boolean;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isParentCategory()Ljava/lang/Boolean;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Boolean;

    return-object v0
.end method
