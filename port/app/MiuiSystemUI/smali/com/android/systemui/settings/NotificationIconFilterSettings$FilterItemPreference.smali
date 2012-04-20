.class Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;
.super Landroid/preference/Preference;
.source "NotificationIconFilterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/NotificationIconFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterItemPreference"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Landroid/content/pm/ApplicationInfo;

.field private mLable:Ljava/lang/CharSequence;

.field private mState:I

.field final synthetic this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/NotificationIconFilterSettings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "info"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    .line 253
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 254
    iput-object p3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 255
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setLayoutResource(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mLable:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$100(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mLable:Ljava/lang/CharSequence;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mLable:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 276
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->this$0:Lcom/android/systemui/settings/NotificationIconFilterSettings;

    #getter for: Lcom/android/systemui/settings/NotificationIconFilterSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/systemui/settings/NotificationIconFilterSettings;->access$100(Lcom/android/systemui/settings/NotificationIconFilterSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 281
    const v2, 0x7f100009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, actionView:Landroid/widget/ImageView;
    move-object v1, p1

    .line 282
    check-cast v1, Landroid/widget/FrameLayout;

    .line 283
    .local v1, root:Landroid/widget/FrameLayout;
    iget v2, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 300
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 301
    return-void

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 291
    const v2, 0x7f02001a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 295
    :pswitch_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    const v2, 0x7f02001b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/systemui/settings/NotificationIconFilterSettings$FilterItemPreference;->mState:I

    .line 272
    return-void
.end method
