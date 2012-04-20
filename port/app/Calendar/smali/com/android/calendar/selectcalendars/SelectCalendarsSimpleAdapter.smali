.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSimpleAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;,
        Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static BOTTOM_ITEM_HEIGHT:I

.field private static COLOR_CHIP_LEFT_MARGIN:I

.field private static COLOR_CHIP_RIGHT_MARGIN:I

.field private static COLOR_CHIP_TOP_OFFSET:I

.field private static NORMAL_ITEM_HEIGHT:I

.field private static SELECTED_COLOR_CHIP_SIZE:I

.field private static UNSELECTED_COLOR_CHIP_SIZE:I


# instance fields
.field private mColorCalendarHidden:I

.field private mColorCalendarSecondaryHidden:I

.field private mColorCalendarSecondaryVisible:I

.field private mColorCalendarVisible:I

.field private mColorColumn:I

.field private mCursor:Landroid/database/Cursor;

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I

.field private mNameColumn:I

.field private mOrientation:I

.field private mOwnerAccountColumn:I

.field mRes:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mScale:F

.field private mVisibleColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 42
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 43
    const/16 v0, 0x14

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 44
    const/16 v0, 0x8

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 45
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 46
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 47
    const/16 v0, 0x30

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "layout"
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 68
    iput v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 84
    iput p2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    .line 86
    invoke-direct {p0, p3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 87
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    .line 89
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    .line 90
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    .line 91
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 92
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .line 94
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    .line 96
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    .line 97
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    .line 98
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    .line 99
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    .line 100
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    .line 101
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    .line 102
    sget v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    .line 104
    :cond_0
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 6
    .parameter "c"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    if-eq p1, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 160
    :cond_0
    if-nez p1, :cond_2

    .line 161
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 162
    iput v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 163
    iput-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 187
    :cond_1
    return-void

    .line 167
    :cond_2
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mCursor:Landroid/database/Cursor;

    .line 168
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    .line 169
    const-string v1, "calendar_displayName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    .line 170
    const-string v1, "calendar_color"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    .line 171
    const-string v1, "visible"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    .line 172
    const-string v1, "ownerAccount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    .line 174
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    .line 175
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    .line 176
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, p:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    new-instance v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    invoke-direct {v3, p0, v5}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$1;)V

    aput-object v3, v1, v0

    .line 180
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mIdColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    .line 181
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mNameColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    .line 183
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v3, v1, v0

    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mVisibleColumn:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 184
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v1, v0

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOwnerAccountColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 183
    goto :goto_1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->initData(Landroid/database/Cursor;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->notifyDataSetChanged()V

    .line 192
    return-void
.end method

.method protected getBackground(IZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "position"
    .parameter "selected"

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 293
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 294
    .local v0, bg:I
    :goto_0
    if-nez p1, :cond_2

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mOrientation:I

    if-ne v3, v1, :cond_2

    :goto_1
    or-int/2addr v0, v1

    .line 295
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    const/4 v1, 0x4

    :goto_2
    or-int/2addr v0, v1

    .line 296
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    add-int/lit8 v3, p1, -0x1

    aget-object v1, v1, v3

    iget-boolean v1, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    :cond_0
    or-int/2addr v0, v2

    .line 297
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$TabletCalendarItemBackgrounds;->getBackgrounds()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .end local v0           #bg:I
    :cond_1
    move v0, v2

    .line 293
    goto :goto_0

    .restart local v0       #bg:I
    :cond_2
    move v1, v2

    .line 294
    goto :goto_1

    :cond_3
    move v1, v2

    .line 295
    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 305
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 309
    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 313
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 314
    const-wide/16 v0, 0x0

    .line 316
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRowCount:I

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_0

    .line 196
    const/16 v17, 0x0

    .line 283
    :goto_0
    return-object v17

    .line 198
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 199
    .local v9, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-boolean v14, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 201
    .local v14, selected:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->color:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v6

    .line 203
    .local v6, color:I
    if-nez p2, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mLayout:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 209
    .local v17, view:Landroid/view/View;
    :goto_1
    const v19, 0x7f100031

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 210
    .local v5, calendarName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lcom/android/calendar/Utils;->transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v19, 0x7f100030

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 213
    .local v7, colorView:Landroid/view/View;
    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 215
    const v19, 0x7f100033

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/CheckBox;

    .line 216
    .local v15, syncCheckBox:Landroid/widget/CheckBox;
    if-eqz v15, :cond_6

    .line 218
    invoke-virtual {v15, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    if-eqz v14, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarVisible:I

    move/from16 v16, v0

    .line 226
    .local v16, textColor:I
    :goto_2
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 229
    .local v8, layoutParam:Landroid/view/ViewGroup$LayoutParams;
    const v19, 0x7f100032

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 230
    .local v13, secondaryText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    aget-object v19, v19, p1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "calendar.google.com"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 234
    if-eqz v14, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryVisible:I

    .line 239
    .local v12, secondaryColor:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mRes:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->ownerAccount:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/calendar/Utils;->transformOwnerAccountIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const/16 v19, -0x2

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    .end local v12           #secondaryColor:I
    :goto_4
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .end local v8           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #secondaryText:Landroid/widget/TextView;
    .end local v16           #textColor:I
    :cond_1
    :goto_5
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 206
    .end local v5           #calendarName:Landroid/widget/TextView;
    .end local v7           #colorView:Landroid/view/View;
    .end local v15           #syncCheckBox:Landroid/widget/CheckBox;
    .end local v17           #view:Landroid/view/View;
    :cond_2
    move-object/from16 v17, p2

    .restart local v17       #view:Landroid/view/View;
    goto/16 :goto_1

    .line 224
    .restart local v5       #calendarName:Landroid/widget/TextView;
    .restart local v7       #colorView:Landroid/view/View;
    .restart local v15       #syncCheckBox:Landroid/widget/CheckBox;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarHidden:I

    move/from16 v16, v0

    .restart local v16       #textColor:I
    goto/16 :goto_2

    .line 237
    .restart local v8       #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    .restart local v13       #secondaryText:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mColorCalendarSecondaryHidden:I

    .restart local v12       #secondaryColor:I
    goto :goto_3

    .line 245
    .end local v12           #secondaryColor:I
    :cond_5
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 253
    .end local v8           #layoutParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #secondaryText:Landroid/widget/TextView;
    .end local v16           #textColor:I
    :cond_6
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v20, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v11, params:Landroid/widget/RelativeLayout$LayoutParams;
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_LEFT_MARGIN:I

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 256
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_RIGHT_MARGIN:I

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 259
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->COLOR_CHIP_TOP_OFFSET:I

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 260
    if-nez v14, :cond_7

    .line 261
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 262
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 263
    iget v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    sget v20, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 264
    iget v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    sget v20, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->SELECTED_COLOR_CHIP_SIZE:I

    sget v21, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->UNSELECTED_COLOR_CHIP_SIZE:I

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    move/from16 v0, v19

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 266
    :cond_7
    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getBackground(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 269
    .local v4, bg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 271
    .local v10, newParams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 272
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->BOTTOM_ITEM_HEIGHT:I

    move/from16 v0, v19

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const v19, 0x7f10009e

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 278
    .local v18, visibleCheckBox:Landroid/widget/CheckBox;
    if-eqz v18, :cond_1

    .line 279
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_5

    .line 274
    .end local v18           #visibleCheckBox:Landroid/widget/CheckBox;
    :cond_8
    sget v19, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->NORMAL_ITEM_HEIGHT:I

    move/from16 v0, v19

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6
.end method

.method public getVisible(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method public setVisible(II)V
    .locals 2
    .parameter "position"
    .parameter "visible"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;

    aget-object v1, v0, p1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter$CalendarRow;->selected:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->notifyDataSetChanged()V

    .line 322
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
