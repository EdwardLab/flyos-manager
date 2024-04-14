.class public Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "photo_thumb_uri"

    const-string v3, "photo_uri"

    .line 30
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x3

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/4 p0, 0x1

    const-string p1, "vnd.android.cursor.item/phone_v2"

    aput-object p1, v4, p0

    const/4 p0, 0x2

    const-string p1, "vnd.android.cursor.item/email_v2"

    aput-object p1, v4, p0

    const-string v3, "contact_id=? AND (mimetype=? OR mimetype=?)"

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getDataProjection()[Ljava/lang/String;
    .locals 3

    const-string v0, "mimetype"

    const-string v1, "data1"

    const-string v2, "data2"

    .line 56
    filled-new-array {v0, v1, v2, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailAdapterProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "_id"

    const-string v1, "display_name"

    const-string v2, "data1"

    const-string v3, "mimetype"

    .line 70
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameProjection()[Ljava/lang/String;
    .locals 4

    const-string v0, "contact_id"

    const-string v1, "display_name"

    const-string v2, "photo_thumb_uri"

    const-string v3, "data1"

    .line 43
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
