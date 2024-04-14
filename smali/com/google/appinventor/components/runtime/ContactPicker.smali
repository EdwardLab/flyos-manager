.class public Lcom/google/appinventor/components/runtime/ContactPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>EmailAddress</code>: the contact\'s primary email address </li>\n <li> <code>ContactUri</code>: the contact\'s URI on the device </li>\n<li> <code>EmailAddressList</code>: a list of the contact\'s email addresses </li>\n <li> <code>PhoneNumber</code>: the contact\'s primary phone number (on Later Android Verisons)</li>\n <li> <code>PhoneNumberList</code>: a list of the contact\'s phone numbers (on Later Android Versions)</li>\n <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).\n</p><p>The ContactPicker component might not work on all phones. For example, on Android systems before system 3.0, it cannot pick phone numbers, and the list of email addresses will contain only one email."
    version = 0xc
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_CONTACTS"
    }
.end annotation


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/String;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/Uri;

.field protected final activityContext:Landroid/app/Activity;

.field protected contactName:Ljava/lang/String;

.field protected contactPictureUri:Ljava/lang/String;

.field protected contactUri:Ljava/lang/String;

.field protected emailAddress:Ljava/lang/String;

.field protected emailAddressList:Ljava/util/List;

.field private havePermission:Z

.field protected phoneNumber:Ljava/lang/String;

.field protected phoneNumberList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "name"

    const-string v1, "primary_email"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 98
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    .line 103
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    .line 105
    sget-object p1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/Uri;

    return-void

    .line 107
    :cond_0
    sget-object p1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/Uri;

    return-void

    .line 110
    :cond_1
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/Uri;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ContactPicker;)Z
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    return v0
.end method


# virtual methods
.method public ContactName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ContactUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URI that specifies the location of the contact on the device."
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddressList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumberList()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ViewContact(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "view a contact via its URI"
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5

    .line 375
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "contactUri is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v2, 0x453

    if-eqz p1, :cond_2

    .line 376
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "checkContactUri failed: C"

    .line 384
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "checkContactUri failed: A"

    .line 377
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    return v0
.end method

.method public click()V
    .locals 3

    .line 116
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ContactPicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ContactPicker$1;-><init>(Lcom/google/appinventor/components/runtime/ContactPicker;)V

    const-string v2, "android.permission.READ_CONTACTS"

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    return-void
.end method

.method protected ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected ensureNotNull(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    .line 466
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method protected getEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    .line 408
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "contact_methods._id = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "data"

    .line 415
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 418
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 422
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 430
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 426
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 427
    throw v0

    :catch_0
    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 3

    .line 223
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 0

    .line 446
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 453
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V
    .locals 10

    const-string v0, ""

    .line 321
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "data1"

    .line 327
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 328
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "mimetype"

    .line 329
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "vnd.android.cursor.item/phone_v2"

    const-string v6, "vnd.android.cursor.item/email_v2"

    .line 334
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 335
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 336
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 337
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 338
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 339
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 341
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Type mismatch: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " or "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ContactPicker"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 349
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 350
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 352
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 353
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 355
    :cond_4
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    .line 356
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    .line 302
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    .line 303
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "display_name"

    .line 304
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "photo_thumb_uri"

    .line 305
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "photo_uri"

    .line 306
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 309
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "photo_uri="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ContactPicker"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 2

    .line 286
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    const/4 v1, 0x1

    .line 288
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ContactPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 290
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 291
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 292
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    :cond_1
    return-void
.end method

.method protected puntContactSelection(I)V
    .locals 3

    const-string v0, ""

    .line 396
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 397
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 398
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 399
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 7

    .line 236
    iget v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->requestCode:I

    if-ne p1, v0, :cond_5

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 237
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "received intent is "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContactPicker"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string p3, "//com.android.contacts/contact"

    .line 244
    invoke-virtual {p0, p1, p3}, Lcom/google/appinventor/components/runtime/ContactPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x0

    .line 248
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 252
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-static {v1, v3, v2}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 256
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V

    .line 259
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Contact name = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email address = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",contact Uri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phone number = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contactPhotoUri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz p3, :cond_4

    .line 274
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, p3

    move-object p3, v0

    goto :goto_1

    :catch_0
    move-object p1, p3

    move-object p3, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, p3

    goto :goto_1

    :catch_1
    move-object p1, p3

    :goto_0
    :try_start_2
    const-string v0, "checkContactUri failed: D"

    .line 267
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x453

    .line 268
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz p3, :cond_1

    .line 271
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz p1, :cond_4

    .line 274
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_2
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_1
    if-eqz p3, :cond_2

    .line 271
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz p2, :cond_3

    .line 274
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_3
    throw p1

    :cond_4
    :goto_2
    const-string p1, "The ContactPicker component have no \'After Picking\' return value."

    .line 278
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ContactPicker;->AfterPicking(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
