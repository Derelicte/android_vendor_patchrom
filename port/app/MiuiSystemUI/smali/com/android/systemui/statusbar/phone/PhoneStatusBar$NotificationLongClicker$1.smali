.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->showOptionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;)V
    .locals 0
    .parameter

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2261
    const/4 v0, 0x0

    .line 2262
    .local v0, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 2282
    :goto_0
    if-eqz v0, :cond_0

    .line 2283
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2284
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapseAndUnlock()V

    .line 2287
    :cond_0
    return-void

    .line 2265
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mPkg:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2267
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 2270
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;->access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationLongClicker;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->toggleFilterSetting(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0

    .line 2275
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2276
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.settings.NotificationIconFilterSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2278
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 2262
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
