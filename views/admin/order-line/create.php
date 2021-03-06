<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\OrderLine */

$this->title = 'Create Order Line';
$this->params['breadcrumbs'][] = ['label' => 'Order Lines', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-line-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
