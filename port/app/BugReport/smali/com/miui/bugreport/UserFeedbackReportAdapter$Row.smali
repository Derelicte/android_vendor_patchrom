.class public Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;
.super Ljava/lang/Object;
.source "UserFeedbackReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bugreport/UserFeedbackReportAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Row"
.end annotation


# instance fields
.field public convertType:I

.field public field:Ljava/lang/reflect/Field;

.field public image:Landroid/graphics/Bitmap;

.field public labelResId:I

.field public report:Lcom/miui/bugreport/UserFeedbackReport;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "resId"

    .prologue
    const/4 v1, 0x0

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, p1, v0}, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;-><init>(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/reflect/Field;II)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/miui/bugreport/UserFeedbackReport;Ljava/lang/reflect/Field;II)V
    .locals 5
    .parameter "feedbackReport"
    .parameter "field"
    .parameter "resId"
    .parameter "convertType"

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput p3, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->labelResId:I

    .line 193
    iput-object p1, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->report:Lcom/miui/bugreport/UserFeedbackReport;

    .line 194
    iput-object p2, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    .line 195
    iput p4, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->convertType:I

    .line 196
    iput-object v4, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;

    .line 197
    if-eqz p2, :cond_0

    const v3, 0x7f040023

    if-ne p3, v3, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 201
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 203
    .local v2, in:Ljava/io/FileInputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 215
    .end local v1           #file:Ljava/io/File;
    .end local v2           #in:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 207
    iput-object v4, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 208
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 210
    iput-object v4, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    iput-object v4, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method isHeader()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->report:Lcom/miui/bugreport/UserFeedbackReport;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isImageView()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/bugreport/UserFeedbackReportAdapter$Row;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
