.class Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;
.super Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlacklistAction"
.end annotation


# instance fields
.field private innerContext:Landroid/content/Context;

.field private intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 919
    .local p3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$BaseAction;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    .line 920
    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->innerContext:Landroid/content/Context;

    .line 922
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ADD_FIREWALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->intent:Landroid/content/Intent;

    .line 923
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->intent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 924
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 925
    .local v1, stringNumbers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 926
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->intent:Landroid/content/Intent;

    const-string v3, "numbers"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 929
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->innerContext:Landroid/content/Context;

    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$BlacklistAction;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    const-string v0, "vnd.android.cursor.item/firewall-log"

    return-object v0
.end method
