.class public Lcom/google/appinventor/components/runtime/ListPickerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListPickerActivity$a;
    }
.end annotation


# static fields
.field private static TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

.field static bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

.field private static backgroundColor:I

.field private static titleBarColor:I


# instance fields
.field private YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

.field hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 57
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    .line 66
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    .line 67
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:Ljava/lang/String;

    const v4, -0xfc560d

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/google/appinventor/components/runtime/ListPickerActivity;->titleBarColor:I

    .line 68
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    sget v5, Lcom/google/appinventor/components/runtime/ListPickerActivity;->titleBarColor:I

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    :cond_2
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:Ljava/lang/String;

    const v4, -0xde690e

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/google/appinventor/components/runtime/ListPickerActivity;->TQYS6YBjqkoWFaGULpL2H003Eu6rkiOxhECYAYl6g8NMleEVKHe9nH3AkWIoC5xt:I

    .line 72
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 74
    :cond_3
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 75
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->MYUGxENNZgpsWEBTVSKDauXfXur6zyPKrPdlATl7m89YCcguzmIKP8wXNDkxMYaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "portrait"

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_4
    const-string v5, "landscape"

    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setRequestedOrientation(I)V

    .line 83
    :cond_5
    :goto_1
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 84
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    :cond_6
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 88
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 90
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_2

    .line 92
    :cond_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 95
    :cond_8
    :goto_2
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 96
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v5, 0x800

    const/16 v6, 0x400

    if-eqz v2, :cond_9

    .line 98
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3

    .line 101
    :cond_9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 102
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 105
    :cond_a
    :goto_3
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 106
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->q2q4oDuUajVwr2T7b6DILrrBhrCqmElgSd3ODKsAFi8uEX2COWatdRT7gov0FlS5:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v5, Landroid/widget/ListView;

    invoke-direct {v5, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    .line 108
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 111
    sget-object v5, Lcom/google/appinventor/components/runtime/ListPicker;->z819s2db3SwWOaVhKbPTp947sGRXlCsEqH9IfB6VLe6W07abBod2oRho8IvcelHj:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/ListPickerActivity;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:I

    .line 112
    sget-object v3, Lcom/google/appinventor/components/runtime/ListPicker;->RC7PBJGdnqEffr8752ypFkbK8qZYkmQ3ci6maWfntRZXmeHa8bLhdKUgkXcpRo6T:Ljava/lang/String;

    const/high16 v5, -0x1000000

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/ListPickerActivity;->backgroundColor:I

    .line 114
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 117
    new-instance v3, Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    invoke-direct {v3, p0, v2}, Lcom/google/appinventor/components/runtime/ListPickerActivity$a;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListPickerActivity$a;

    .line 118
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    sget-object v2, Lcom/google/appinventor/components/runtime/ListPicker;->OFXnSk7pjyu5TDlQcCs0Ee2Ss8ceD26gQ4XJfzIMtdlcKhGXQ2j7Mh9NsuvjNyC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    .line 123
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setWidth(I)V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const-string v2, "Search list..."

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_b

    const-string v0, "true"

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 129
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 133
    :cond_c
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;-><init>(Lcom/google/appinventor/components/runtime/ListPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_4

    .line 154
    :cond_d
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    .line 158
    :goto_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setContentView(Landroid/view/View;)V

    .line 162
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    const-string p1, "input_method"

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 166
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 167
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 173
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 174
    sget-object p4, Lcom/google/appinventor/components/runtime/ListPicker;->LVnP8NaPYXRgwZHgDK7PHMVEgcKwsNvZv2AHicCDg6yGIfguFikZkwwgr0dhWzJE:Ljava/lang/String;

    invoke-virtual {p2, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    sget-object p4, Lcom/google/appinventor/components/runtime/ListPicker;->cOmDbOC978RubVhXjun4VkHg9OxeO5ZzRCTQEv8rZa8E7YdcVv7aSE4TjAXwfuwN:Ljava/lang/String;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    const/4 p1, -0x1

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListPickerActivity;->finish()V

    .line 179
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 187
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 188
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V

    return p1

    .line 191
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
