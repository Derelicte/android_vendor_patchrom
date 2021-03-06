.class public Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeComponentApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeComponentApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComponentGridsAdapter"
.end annotation


# instance fields
.field private mExistFlag:J

.field private mItemCount:I

.field private mOrderComponentFlag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceLocal:Z

.field private mSelectFlag:J

.field final synthetic this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeComponentApplyActivity;JZ)V
    .locals 9
    .parameter
    .parameter "detailFlag"
    .parameter "resourceLocal"

    .prologue
    const-wide/32 v7, 0x10000000

    const-wide/16 v5, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 225
    iput-wide p2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mExistFlag:J

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    .line 228
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 229
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    aget-wide v0, v3, v2

    .line 230
    .local v0, component:J
    iget-wide v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mExistFlag:J

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0           #component:J
    :cond_1
    iget-wide v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mExistFlag:J

    and-long/2addr v3, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_2
    iget-object v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mItemCount:I

    .line 242
    invoke-virtual {p0, p4}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->setClickable(Z)V

    .line 243
    return-void
.end method

.method static synthetic access$300(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$474(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    and-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    return-wide v0
.end method

.method static synthetic access$478(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    return-wide v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mItemCount:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 318
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectComponentFlag()J
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 247
    if-nez p2, :cond_0

    .line 248
    iget-object v10, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->this$0:Lcom/android/thememanager/ThemeComponentApplyActivity;

    invoke-virtual {v10}, Lcom/android/thememanager/ThemeComponentApplyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030003

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 253
    .local v9, view:Landroid/view/View;
    :goto_0
    iget-object v10, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 254
    .local v0, actualItemCount:I
    if-lt p1, v0, :cond_1

    const-wide/16 v1, 0x0

    .line 256
    .local v1, componentFlag:J
    :goto_1
    if-ge p1, v0, :cond_2

    const/4 v6, 0x1

    .line 257
    .local v6, itemShowContent:Z
    :goto_2
    if-eqz v6, :cond_3

    iget-boolean v10, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mResourceLocal:Z

    if-eqz v10, :cond_3

    const/4 v4, 0x1

    .line 258
    .local v4, itemClickable:Z
    :goto_3
    if-eqz v4, :cond_4

    iget-wide v10, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    const/4 v5, 0x1

    .line 260
    .local v5, itemSelected:Z
    :goto_4
    const v10, 0x7f060007

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 261
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_5

    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    if-eqz v5, :cond_6

    const/4 v10, -0x1

    :goto_6
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    invoke-static {v1, v2}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v7

    .line 264
    .local v7, textId:I
    if-eqz v7, :cond_8

    .line 265
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :goto_7
    const v10, 0x7f060009

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 271
    .local v3, image:Landroid/widget/ImageView;
    if-eqz v5, :cond_9

    const/4 v10, 0x0

    :goto_8
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    new-instance v10, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;

    invoke-direct {v10, p0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter$1;-><init>(Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    if-eqz v5, :cond_a

    .line 292
    const v10, 0x7f020004

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 297
    :goto_9
    return-object v9

    .line 250
    .end local v0           #actualItemCount:I
    .end local v1           #componentFlag:J
    .end local v3           #image:Landroid/widget/ImageView;
    .end local v4           #itemClickable:Z
    .end local v5           #itemSelected:Z
    .end local v6           #itemShowContent:Z
    .end local v7           #textId:I
    .end local v8           #tv:Landroid/widget/TextView;
    .end local v9           #view:Landroid/view/View;
    :cond_0
    move-object/from16 v9, p2

    .restart local v9       #view:Landroid/view/View;
    goto :goto_0

    .line 254
    .restart local v0       #actualItemCount:I
    :cond_1
    iget-object v10, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mOrderComponentFlag:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    .line 256
    .restart local v1       #componentFlag:J
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 257
    .restart local v6       #itemShowContent:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 258
    .restart local v4       #itemClickable:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    .line 261
    .restart local v5       #itemSelected:Z
    .restart local v8       #tv:Landroid/widget/TextView;
    :cond_5
    const/16 v10, 0x8

    goto :goto_5

    .line 262
    :cond_6
    if-eqz v4, :cond_7

    const/high16 v10, -0x100

    goto :goto_6

    :cond_7
    const v10, -0x777778

    goto :goto_6

    .line 267
    .restart local v7       #textId:I
    :cond_8
    const-string v10, ""

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 271
    .restart local v3       #image:Landroid/widget/ImageView;
    :cond_9
    const/4 v10, 0x4

    goto :goto_8

    .line 294
    :cond_a
    const v10, 0x7f020003

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9
.end method

.method public isSelectAllComponent()Z
    .locals 4

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    iget-wide v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mExistFlag:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRemoveAllOldTheme()Z
    .locals 6

    .prologue
    .line 322
    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v4, -0x1

    xor-long v0, v2, v4

    .line 323
    .local v0, noneRingtoneFlags:J
    iget-wide v2, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    and-long/2addr v2, v0

    iget-wide v4, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mExistFlag:J

    and-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 6
    .parameter "clickable"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mResourceLocal:Z

    .line 302
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mExistFlag:J

    iput-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    .line 303
    iget-boolean v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mResourceLocal:Z

    if-eqz v0, :cond_0

    .line 304
    iget-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->mSelectFlag:J

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeComponentApplyActivity$ComponentGridsAdapter;->notifyDataSetInvalidated()V

    .line 307
    return-void
.end method
