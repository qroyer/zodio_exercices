<?php
/**
 * Copyright © Magento, Inc. All rights reserved.
 * See COPYING.txt for license details.
 */
namespace Magento\Framework\MessageQueue;

/**
 * @api
 * @since 102.0.1
 * @since 100.0.2
 */
interface EnvelopeInterface
{
    /**
     * Binary representation of message
     *
     * @return string
     * @since 102.0.1
     */
    public function getBody();

    /**
     * Message metadata
     *
     * @return array
     * @since 102.0.1
     */
    public function getProperties();
}